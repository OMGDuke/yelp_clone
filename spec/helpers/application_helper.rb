module ApplicationHelper
  def sign_up
    visit('/')
    click_link('Sign up')
    fill_in('Email', with: 'luni@cat.com')
    fill_in('Password', with: 'marley')
    fill_in('Password confirmation', with: 'marley')
    click_button('Sign up')
  end
end
