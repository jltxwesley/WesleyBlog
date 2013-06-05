Feature: Login Function
  In order to manage my blogs
  As the blog owner
  I want to login to the application only when authenticated

  Background:
    Given   I already have an account

  Scenario: login successfully
    When    I log in with valid credentials
    Then    I should see "Logged in successfully!"

  Scenario: login unccessfully
    When    I log in with invalid credentials
    Then    I should see "Invalid username or password!"
