require 'spec_helper'

describe "UserPages" do
  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content(I18n.t('nav.signup')) }
    it { should have_title(full_title(I18n.t('nav.signup'))) }
  end
end
