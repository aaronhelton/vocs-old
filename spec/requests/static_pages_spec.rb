require 'spec_helper'

supported_languages = ['en','es']

supported_languages.each do |lang|
  describe "StaticPages for locale=#{lang}" do
    subject { page }

    describe "Home page" do
      before { visit "#{root_path}?locale=#{lang}" }
      it { should have_title(full_title('')) }
      it { should_not have_title('| Home') }
    end

    describe "Help page" do
      before { visit "#{help_path}?locale=#{lang}" }
      it { should have_content(I18n.t("nav.help")) }
      it { should have_title(full_title(I18n.t('nav.help'))) }
    end

    describe "About page" do
      before { visit "#{about_path}?locale=#{lang}" }
      it { should have_content(I18n.t('nav.about')) }
      it { should have_title(full_title(I18n.t('nav.about'))) }
    end

    describe "Contact page" do
      before { visit "#{contact_path}?locale=#{lang}" }
      it { should have_content(I18n.t("nav.contact_us")) }
      it { should have_title(full_title(I18n.t('nav.contact'))) }
    end
  end
end
