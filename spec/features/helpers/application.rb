module ApplicationHelper

  def sign_up_one
    visit '/'
    click_link 'Sign up'
    fill_in('Email', with: 'testOne@example.com')
    fill_in('Password', with: 'testtest')
    fill_in('Password confirmation', with: 'testtest')
    click_button 'Sign up'
  end

end
