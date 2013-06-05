Given(/^I already have an account$/) do
  @user = User.create!(name: 'wesley', password: 'blog', password_confirmation: 'blog')
end


When(/^I log in with valid credentials$/) do
  login(@user.name, @user.password)
end

When(/^I log in with invalid credentials$/) do
  login(@user.name, @user.password << "test")
end

Then(/^I should see "(.*)"$/) do |message|
  page.should have_content message
end

World Helpers
