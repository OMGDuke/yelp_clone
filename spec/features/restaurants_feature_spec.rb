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
    context 'create restaurant' do
      scenario 'prompt user to fill out a form, then display the restaurant' do
        visit '/restaurants'
        click_link 'add a restaurant'
        fill_in 'Name', with: 'KFC'
        click_button 'Create Restaurant'
        expect(page).to have_content ('KFC')
        expect(current_path).to eq '/restaurants'
      end
    end
end
