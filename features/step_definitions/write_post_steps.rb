Given(/^I am on the blog home page$/) do
  visit articles_path
end

When(/^I click New Article Link$/) do
  click_link 'New Article'
end

When(/^I fill "(.*?)" as name$/) do |name|
  @name = title
  fill_in 'name', :with => title
end

When(/^I fill "(.*?)" as content$/) do |content|
  fill_in 'content', :with => content
end

When(/^I fill "(.*?)" as tag$/) do |tag|
  fill_in 'tag', :with => tag
end

When(/^I click Create Article button$/) do
  click_button 'Create Article'
end

Then(/^I should see the blog I just posted$/) do
  page.should have_content(@name)
end