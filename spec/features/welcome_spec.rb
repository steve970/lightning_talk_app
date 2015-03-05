require 'rails_helper'

feature 'User can visit the root_path and see links to sign up and sign in link' do

  scenario 'New users can click link to registration page' do
    visit root_path

    click_link 'Sign Up'

    expect(current_path).to eq signup_path
    expect(page).to have_content('Sign Up for Lightning Talks!')
  end

  scenario 'Returning users can click a link to Sign In page' do
    visit root_path

    click_link 'Sign In'

    expect(current_path).to eq signin_path
    expect(page).to have_content('Sign In, ready for your next Lightning Talk?')
  end

end
