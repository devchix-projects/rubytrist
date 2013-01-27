require 'spec_helper'

feature "user login" do

  scenario "user logs in with nola" do
    visit root_url
    fill_in "name", with: "nola"
    click_button "Login"
    page.should have_content "Logged in as: nola"
  end
 
  scenario "user logs out" do
    visit root_url
    fill_in "name", with: "nola"
    click_button "Login"
    page.should have_content "Logged in as: nola"

    click_button "Logout" 
    page.should have_content "Logged out"
  end

end

