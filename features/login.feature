Feature: Authentication
  In order to manage the blog
  As the blog owner
  I want to log into the application only when authorized

  Scenario: login with invalid credentials
    Given   I am on the login page
    When    I fill in "Name" with "test"
    And     I fill in "Password" with "password"
    And     I press "Login"
    Then    The login page should be redisplayed
    And     I should see "Invalid username or password"