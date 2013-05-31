Feature: Authentication
  In order to manage the blog
  As the blog owner
  I want to log into the application only when authorized

  Scenario: login with invalid credentials
    Given   I am on the login page
    When    I fill in name with "test"
    And     I fill in password with "password"
    And     I press login button
    Then    I should see "Invalid username or password!"

  Scenario: login with valid credentials
    Given   I am on the login page
    When    I fill in name with "miraclewesley"
    And     I fill in password with "poiuy12345!?mnbvc"
    And     I press login button
    Then    I should see "Logged in successfully!"