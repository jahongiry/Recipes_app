require 'rails_helper'

RSpec.feature 'Navbar', type: :feature do
  describe 'Navbar' do
    it 'should have a link to Home page' do
      visit root_path
      expect(page).to have_link('Recipe App')
    end

    it 'should have a link to sign up page' do
      visit root_path
      expect(page).to have_link('Sign Up')
    end

    it 'should have a link to Signin page' do
      visit root_path
      expect(page).to have_link('Sign In')
    end
  end
end
