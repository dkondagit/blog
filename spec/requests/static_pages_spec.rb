require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'the sickest blog '" do
      visit 'welcome#index'
      expect(page).to have_content('The sickest Blog')
    end
  end
end
