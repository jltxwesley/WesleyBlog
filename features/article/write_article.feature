Feature: Write Article
  In order to publish my new blog article
  As a blog owner
  I can write new articels in the application

  Scenario: write article
  Given I am logged in
  When I post a new article
  Then I should see the article I just wrote
