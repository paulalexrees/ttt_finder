require 'rails_helper'

feature 'home' do
  context 'visiting homepage' do
    scenario 'has a sign up button' do
      visit '/tables'
      expect(page).to have_link 'Sign up'
    end
    
    scenario 'has an add table link' do
      visit '/tables'
      expect(page).to have_link 'Add a table'
    end
  end

  context 'creating tables' do
    scenario 'prompts user to fill in form then displays the table' do
      visit '/tables'
      click_link 'Add a table'
      fill_in 'Name', with:'Paradise Park' 
      fill_in 'Postcode', with:'N7 8PF'
      click_button 'Create Table'
      expect(page).to have_content 'Paradise Park'
      expect(current_path).to eq '/tables'
    end
  end

end
