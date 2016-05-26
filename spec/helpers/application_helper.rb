module ApplicationHelper
  def sign_up
    visit('/')
    click_link('Sign up')
    fill_in('Email', with: 'luni@cat.com')
    fill_in('Password', with: 'marley')
    fill_in('Password confirmation', with: 'marley')
    click_button('Sign up')
  end

  def sign_up_2
    visit('/')
    click_link('Sign up')
    fill_in('Email', with: 'honey@cat.com')
    fill_in('Password', with: 'sparkley')
    fill_in('Password confirmation', with: 'sparkley')
    click_button('Sign up')
  end

  def create_restaurant
    visit('/')
    click_link('Add a restaurant')
    fill_in('Name', with: 'KFC')
    click_button('Create Restaurant')
  end

end
