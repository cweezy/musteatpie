require 'spec_helper'

describe "StaticPages" do
  
  describe "index" do
    it "should have the title and correct text" do
      visit '/'
      page.should have_content('Home-baked')
      page.should have_content('Seasonal Ingredients')
      page.should have_content('Sweet or Savory')
    end
  end

  describe "about page" do
    it "should have the about text" do
      visit '/about'
      page.should have_content('Must Have Pie is really great because')
    end
  end
end
