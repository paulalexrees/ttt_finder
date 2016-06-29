Feature: Add Table
  In order to have tables for people to find
  As a user
  I want to add and manage tables

  Scenario: Tables List
    Given a user visits the website
    Then they can see a sign up button
    When they click the sign up button
    Then they should be on the sign up page
    When they enter their details correctly and click sign up
    Then they should be taken back to the homepage
    And they should see a sign out button
    And they should see 'No tables yet'
    And they should see 'Add a table'
    When they click 'Add a table'
    Then they should be on the new table page
