require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }

  supported_languages.each do |lang|
    describe "signin page" do
      before { visit signin_path }

      it { should have_content(I18n.t('nav.signin')) }
      it { should have_title(I18n.t('nav.signin')) }
    end
  end 

  describe "signin" do
    before { visit signin_path }

    describe "with invalid information" do
      before { click_button I18n.t('button.signin') }
      it { should have_title(I18n.t('nav.signin')) }
      it { should have_selector('div.alert.alert-error') }
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email", with: user.email.upcase
        fill_in "Password", with: user.password
        click_button I18n.t('button.signin')
      end

      it { should have_title(user.name) }
      it { should have_link(I18n.t('nav.profile'), href: "#{user_path(user)}?locale=en") }
      it { should have_link(I18n.t('nav.signout'), href: "#{signout_path}?locale=en") }
      it { should_not have_link(I18n.t('nav.signin'), href: "#{signin_path}?locale=en") }

      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-error') }
      end

      describe "followed by signout" do
        before { click_link "Sign out" }
        it { should have_link('Sign in') }
      end
    end
  end
end
