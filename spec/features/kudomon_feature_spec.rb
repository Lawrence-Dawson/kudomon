require 'rails_helper'

feature 'kudomon' do

  context 'kudomon environment' do
    scenario 'should display all kudomon' do
      visit '/kudomon'
      expect(page).to have_content 'All local Kudomon'
    end
  end


end
