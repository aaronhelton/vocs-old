require 'spec_helper'

describe "UserPages" do
  subject { page }

  #Really we on;y need to test that the pages respond to their locales.
  supported_languages.each do
    describe "signup page" do
      before { visit signup_path }

      it { should have_content(I18n.t('nav.signup')) }
      it { should have_title(full_title(I18n.t('nav.signup'))) }
    end

    describe "profile page" do
      let(:user) { FactoryGirl.create(:user) }
      before { visit user_path(user) }

      it { should have_content(user.name) }
      it { should have_title(user.name) }
    end
  end

  describe "signup" do
    before { visit signup_path }

    let(:submit) { I18n.t('button.create_account') }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",		with: "Example User"
        fill_in "Email",	with: "user@example.com"
        fill_in "Password",	with: "foobar"
        fill_in "Confirmation",	with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end

      describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by(email: 'user@example.com') }

        it { should have_link(I18n.t('nav.signout')) }
        it { should have_title(user.name) }
        it { should have_selector('div.alert.alert-success', text: I18n.t('form.user_create_success')) }
      end
    end
  end

  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit edit_user_path(user) }

    describe "page" do
      it { should have_content(I18n.t('pages.update_profile')) }
      it { should have_title(I18n.t('nav.edit_user')) }
      it { should have_link(I18n.t('external.gravatar.change'), href: 'http://gravatar.cin.emails') }
    end

    describe "with invalid information" do
      before { click_button I18n.t('button.save_changes') }
      it { should have_content(I18n.t('form.error.error')) }
    end
  end
end
