require 'rails_helper'

feature 'restaurants' do
  context 'has no restaurants'do
    scenario 'desplays a prompt to add a restaurant' do
      visit '/restaurants'
      expect(page).to have_content 'no restaurants'
      expect(page).to have_link 'add a restaurant'
    end
  end

  context 'restaurants have been added' do
    before do
      Restaurant.create(name:'KFC')
    end

    scenario 'display restaurants' do
      visit '/restaurants'
      expect(page).to have_content('KFC')
      expect(page).to_not have_content('No restaurants yet')
    end
  end
end
