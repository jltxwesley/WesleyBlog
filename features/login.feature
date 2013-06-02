Feature: Authentication
  As a blog owner
  I want to log into the application only when authorized
  So that I can manage my blogs

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