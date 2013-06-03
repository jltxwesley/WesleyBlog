Before('@blog') do
  User.create!(name: "wesley", password: "blog", password_confirmation: "blog")
  visit login_path
  fill_in 'user_name', :with => "wesley"
  fill_in 'user_password', :with => "blog"
  click_button 'Login'
end

Given(/^I am on the blog home page$/) do
  visit articles_path
end

When(/^I click New Article Link$/) do
  click_link 'New Article'
end

When(/^I fill "(.*?)" as name$/) do |name|
  @name = name
  fill_in 'article_name', :with => name
end

When(/^I fill "(.*?)" as content$/) do |content|
  fill_in 'article_content', :with => content
end

When(/^I fill "(.*?)" as tag$/) do |tag|
  fill_in 'article_tag_list', :with => tag
end

When(/^I click Create Article button$/) do
  click_button 'Create Article'
end

Then(/^I should see the blog I just posted$/) do
  page.should have_content(@name)
end