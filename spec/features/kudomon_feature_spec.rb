require 'rails_helper'

feature 'kudomon' do

  context 'Welcome' do
    scenario 'should display welcome message' do
      visit '/kudomon'
      expect(page).to have_content 'Welcome to Kudomon!'
    end
  end

  context 'kudomon environment' do
    scenario 'should display all kudomon' do
      visit '/kudomon'
      expect(page).to have_content 'All Kudomon Sourbulb Mancharred Chikapu Whirtle Stoner Twomew'
    end
  end




end
