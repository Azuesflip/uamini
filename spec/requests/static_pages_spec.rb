require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Uamini'" do
      visit '/static_pages/home'
      expect(page).to have_content('Uamini')
    end

    it "should have the title 'Uamini'" do
      visit '/static_pages/home'
      expect(page).to have_title('Uamini')
    end
    
    it "shout not have a custome title" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do
  
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Uamini | Help")
    end
  end

  describe "About page" do
    
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Uamini | About Us")
    end
  end

  describe "About page" do
    
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("Uamini | Contact Us")
    end
  end
end
