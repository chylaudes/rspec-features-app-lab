require 'rails_helper'

feature 'Visitor checks weather' do
  scenario 'sunny' do
    #setup
    visit root_path
    #exercise
    fill_in "What's your zipcode?", with: "94702" #<--- the text within the text field

    click_button "Is it going to rain?" #<--- the text within the button

    #verify
    expect(page).to_have_content "Sun's gonna be shining!"
    expect(page).to_have_content "No umbrella needed"


  end


  end
