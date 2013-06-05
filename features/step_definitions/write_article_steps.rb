Given(/^I am logged in$/) do
  @user = User.create!(name: 'wesley', password: 'blog', password_confirmation: 'blog')
  login(@user.name, @user.password)
end

When(/^I post a new article$/) do
  @name = "New Article"
  post_article(@name)
end

Then(/^I should see the article I just wrote$/) do
  page.should have_content(@name)
end

World Helpers
