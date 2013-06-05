module Authentication
  def login(name, password)
    visit login_path
    fill_in 'user_name', :with => name
    fill_in 'user_password', :with => password
    click_button 'Login'
  end
 end

