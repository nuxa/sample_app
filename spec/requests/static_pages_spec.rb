require 'spec_helper'

describe "Static pages(静的ページの特徴)" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page(ホームページの特徴)" do

    it "should have the content 'Sample App'(sample_appという文字列があるか)" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title (タイトルがRuby on Rails Tutorialであるか)" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title (カスタムしたページタイトルになっているべき)" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page(Helpページの特徴)" do

    it "should have the content 'Help'(Helpという文字列があるか)" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title (タイトルが'Help'であるか)" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page(Aboutページの特徴)" do

    it "should have the content 'About'(Aboutという文字列があるか)" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title (タイトルが'About Us'であるか)" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end  

  describe "Contact page(Contactページの特徴)" do

    it "should have the content 'Contact'(Contactという文字列があるか)" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the right title (タイトルが'Contact'であるか)" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end