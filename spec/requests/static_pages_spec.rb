require 'spec_helper'

describe "Static pages" do

	let(:page_title) { "Microblog App" }

  describe "Home page" do

    it "should have the h1 'Microblog App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Microblog App')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                    :text => "#{page_title} | Home")
    end
  end
  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                    :text => "#{page_title} | Help")
    end
  end
  describe "About page" do

    it "should have the h1 'About us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "#{page_title} | About us")
    end
  end
  describe "Contact page" do

    it "should have the h1 'Contact us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact us')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "Microblog App | Contact us")
    end
  end
end
