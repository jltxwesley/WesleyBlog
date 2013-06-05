@blog
Feature: write blog
  As a blog owner
  I can write new blog post

  Scenario: write blog
  Given I am on the blog home page
  When I click New Article Link
  And I fill "My first blog" as name
  And I fill "Test content" as content
  And I fill "ruby, rails" as tag
  And I click Create Article button
  Then I should see the blog I just posted