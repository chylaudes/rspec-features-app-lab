require 'rails_helper'

feature 'Visitor checks weather' do
  scenario 'sunny' do
    #setup
    visit root_path
    #exercise
    fill_in "What's your zipcode?", with: "94702" #<--- the text within the text field

    click_button "Is it going to rain?" #<--- the text within the button

    #verify
    expect(page).to have_content("Sun's OUT! Guns OUT!")
    expect(page).to have_content("No umbrella needed.")


  end
  scenario 'rainning' do
    #setup
    visit root_path
    #exercise
    fill_in "What's your zipcode?", with: "94611" #<--- the text within the text field

    click_button "Is it going to rain?" #<--- the text within the button

    #verify
    expect(page).to have_content("It's rainning!")
    expect(page).to have_content("Use your umbrella!")


  end

  end
