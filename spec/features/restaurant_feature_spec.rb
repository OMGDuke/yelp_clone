require 'rails_helper'

feature 'restaurants' do
  context 'has no restaurants'do
    scenario 'desplays a prompt to add a restaurant' do
      visit '/restaurants'
      expect(page).to have_content 'no restaurants'
      expect(page).to have_link 'add a restaurant'
    end
  end
end
