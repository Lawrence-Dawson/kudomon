require 'rails_helper'
require 'web_helpers'

feature 'kudomon' do

  context 'Welcome' do
    scenario 'should display welcome message' do
      visit '/kudomon'
      expect(page).to have_content 'Welcome to Kudomon Go!'
    end
  end

  context 'Kudomon have been added' do
    before do
      Kudomon.create(species: 'Sourbulb', of_type: 'Grass', location: 1)
    end
    scenario 'display kudomon' do
      sign_up
      select '1', from: 'location'
      click_button 'Go to location!'
      expect(page).to have_content 'Sourbulb'
    end
  end


  context 'Kudomon capture' do
    before(:each) do
      load "#{Rails.root}/db/seeds.rb"
    end
    scenario 'the environment should pre seed with Kudomon' do
      visit '/kudomon'
      sign_up
      select '4', from: 'location'
      click_button 'Go to location!'
      expect(page).to have_content 'Whirtle'
    end

    scenario 'Only Kudomon nearby a Trainer appear' do
      visit '/kudomon'
      sign_up
      select '1', from: 'location'
      click_button 'Go to location!'
      expect(page).not_to have_content 'Mancharred Chikapu Whirtle Stoner Twomew'
    end

    scenario 'Only Kudomon nearby a Trainer can be caught' do
      visit '/kudomon'
      sign_up
      select '1', from: 'location'
      click_button 'Go to location!'
      click_link 'Capture Sourbulb!'
      expect(page).to have_content 'You captured Sourbulb!'
    end


    scenario 'You can view all captured Kudomon' do
      visit '/kudomon'
      sign_up
      capture_sourbulb
      click_link 'Move to a new location'
      capture_mancharred
      click_link 'View captured Kudomon'
      expect(page).to have_content 'Sourbulb' && 'Mancharred'
    end
  end
end
