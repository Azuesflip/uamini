require 'spec_helper'

describe "Static pages" do

	subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Uamini') }
    it { should have_title('Uamini') }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
		before { visit help_path }

		it { should have_content('Help') }
		it { should have_title('Uamini | Help') }
  end

  describe "About page" do
		before { visit about_path }

		it { should have_content('About Us') }
		it { should have_title('Uamini | About Us') }
  end

  describe "Contact page" do
		before { visit contact_path }

		it { should have_content('Contact Us') }
		it { should have_title('Uamini | Contact Us') }
  end
end
