Feature: Add Table
  In order to have tables for people to find 
  As a user
  I want to add and manage tables

  Scenario: Tables List
    Given Table 'Paradise Park' with location 'N7 8PF'  has been added
    When I go to the tables page
    Then I should see 'Paradise Park'
    And I should see 'N7 8PF'
