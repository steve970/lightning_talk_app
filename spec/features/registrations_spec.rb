require 'rails_helper'

feature 'User can create a new user for signing up for lightning talks' do

  scenario 'User successfully creates a new account and can see success message' do
    visit signup_path

    fill_in 'First Name', with: 'Steve'
    fill_in 'Last Name', with: 'H'
    fill_in 'Email', with: 'test@gmail.com'
    fill_in 'Password', with: '1234'
    fill_in 'Password Confirmation', with: '1234'
    click_button 'Sign Up'

    expect(current_path).to eq lightning_talks_path
    expect(page).to have_content ('You successfully signed up!')
  end
end
