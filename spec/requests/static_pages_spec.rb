require 'spec_helper'

describe "Static pages(静的ページの特徴)" do

  describe "Home page(ホームページの特徴)" do

    it "should have the content 'Sample App'(sample_appという文字列があるか)" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title (タイトルが'Home'であるか)" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page(Helpページの特徴)" do

    it "should have the content 'Help'(Helpという文字列があるか)" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title (タイトルが'Help'であるか)" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page(Aboutページの特徴)" do

    it "should have the content 'About'(Aboutという文字列があるか)" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title (タイトルが'About Us'であるか)" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
