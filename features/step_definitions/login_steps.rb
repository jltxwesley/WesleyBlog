Given(/^I am on the login page$/) do
  visit login_path
  User.create!(name: "miraclewesley", password: "poiuy12345!?mnbvc",
    password_confirmation: "poiuy12345!?mnbvc")
end

When(/^I fill in name with "(.*?)"$/) do |name|
  fill_in 'user_name', :with => name
end

When(/^I fill in password with "(.*?)"$/) do |password|
  fill_in 'user_password', :with => password
end

When(/^I press login button$/) do
  click_button 'Login'
end

Then(/^I should see "(.*?)"$/) do |message|
  page.should have_content(message)
end