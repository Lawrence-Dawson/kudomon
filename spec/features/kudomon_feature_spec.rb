require 'rails_helper'

feature 'kudomon' do

  context 'Welcome' do
    scenario 'should display welcome message' do
      visit '/kudomon'
      expect(page).to have_content 'Welcome to Kudomon!'
    end
  end

  context 'kudomon environment' do
    scenario 'should display no kudomon' do
      visit '/kudomon'
      expect(page).to have_content 'No Kudomon in environment'
    end
  end

  context 'Kudomon have been added' do
  before do
    Kudomon.create(name: 'Sourbulb')
  end
    scenario 'display kudomon' do
      visit '/kudomon'
      expect(page).to have_content 'All Kudomon Sourbulb'
    end
  end

end
#Mancharred Chikapu Whirtle Stoner Twomew
