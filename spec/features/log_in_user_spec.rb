require 'rails_helper'

feature 'the log in a user process' do
  scenario 'logs in a user with correct credentials' do
    visit root_path
    create(:user)
    click_link 'Sign in'
    fill_in 'Username', with: 'testuser'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    expect(page).to have_content 'Signed in'
  end
end
