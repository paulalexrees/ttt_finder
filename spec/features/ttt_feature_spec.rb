require 'rails_helper'

feature 'home' do
  context 'visiting homepage' do
    scenario 'has a sign up button' do
      visit '/tables'
      expect(page).to have_link 'Sign Up'
    end
  end
end
