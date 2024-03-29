require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    before { visit root_path }

  	it "should have the h1 'Welcome to the Sample App'" do  		
  		page.should have_selector('h1', :text => 'Welcome to the Sample App')
  	end

  	it "should have the base title" do  		
  		page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
  	end

    it "should not have a custom page title" do    
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do

    before { visit help_path }
  	
    it "should have the h1 'Help'" do
  		page.should have_selector('h1', :text => 'Help')
  	end

  	it "should have the base title" do  	
  		page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
  	end

    it "should not have a custom page title" do      
      page.should_not have_selector('title', :text => '| Help')
    end
  end

  describe "About page" do

    before { visit about_path }

  	it "should have the h1 'About Us'" do  		
  		page.should have_selector('h1', :text => 'About Us')
  	end

  	it "should have the base title" do  		
  		page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
  	end

    it "should not have a custom page title" do      
      page.should_not have_selector('title', :text => '| About')
    end
  end

  describe "Contact page" do

    before { visit contact_path }

  	it "should have the h1 'Contact'" do  		
  		page.should have_selector('h1', :text => 'Contact')
  	end

  	it "should have the base title" do  		
  		page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
  	end

    it "should not have a custom page title" do      
      page.should_not have_selector('title', :text => '| Contact')
    end
  end
end
