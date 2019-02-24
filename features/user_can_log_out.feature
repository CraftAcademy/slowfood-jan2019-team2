Feature: User can log out
  As a user,
  In order to log out of my account
  I would like to be able to log out

   Background:
    Given the following user exists
      |   email               |   password    |
      |   laura@gmail.com     |   0443431157  |
    And I am logged in as "laura@gmail.com"
    
    Scenario: User can log out
    When I click on "Log out"
    Then I should see "Signed out successfully."
