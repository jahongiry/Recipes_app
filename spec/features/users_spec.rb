require 'rails_helper'

RSpec.describe 'Foods', type: :feature do
  describe 'User sign_up' do
    before(:each) do
      visit new_user_registration_path
    end

    it 'should have a Sign up Button' do
      expect(page).to have_button('Sign up')
    end

    it 'should have a link to Home page' do
      expect(page).to have_content('Name')
      expect(page).to have_content('Email')
      expect(page).to have_content('Password')
      expect(page).to have_content('Password confirmation')
    end

    it 'should Sign up' do
      page.fill_in 'Name', with: 'Dani'
      page.fill_in 'Email', with: 'admin@example.com'
      page.fill_in 'Password', with: '123456'
      page.fill_in 'Password confirmation', with: '123456'
      click_on 'Sign up'
      page.should have_no_content('Wait for the text which is')
    end
  end

  describe 'User Log in' do
    before(:each) do
      visit user_session_path
    end

    it 'should have a Log in Button' do
      expect(page).to have_button('Log in')
    end

    it 'should have a link to Home page' do
      expect(page).to have_content('Email')
      expect(page).to have_content('Password')
    end

    it 'should Sign up' do
      page.fill_in 'Email', with: 'gech@gmail.com'
      page.fill_in 'Password', with: '123456'
      click_on 'Log in'
      page.should have_content('Sign up')
    end
  end
end
