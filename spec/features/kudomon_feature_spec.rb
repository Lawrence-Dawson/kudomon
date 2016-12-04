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
      Kudomon.create(species: 'Sourbulb', of_type: 'Grass')
    end
    scenario 'display kudomon' do
      visit '/kudomon'
      expect(page).to have_content 'All Kudomon Sourbulb'
    end
  end


  context 'Kudomon environment' do
    before(:each) do
      load "#{Rails.root}/db/seeds.rb"
    end
    scenario 'the environment should pre seed with Kudomon' do
      visit '/kudomon'
      expect(page).to have_content 'Sourbulb Mancharred Chikapu Whirtle Stoner Twomew'
    end

    scenario 'Only Kudomon nearby a Trainer can be caught' do
      visit '/kudomon'
      expect(page).not_to have_content 'Mancharred Chikapu Whirtle Stoner Twomew'
    end
  end

end
