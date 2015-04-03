require 'rails_helper'

feature 'the create a user process' do
  scenario 'creates a user with proper input' do
    visit root_path
    click_link 'Sign up'
    fill_in 'Username', with: 'testuser1234'
    fill_in 'Email', with: 'testtest@user.com'
    fill_in 'Password', with: 'Password'
    fill_in 'Password confirmation', with: 'Password'
    click_button 'Sign up'
    expect(page).to have_content 'signed up'
  end
end
