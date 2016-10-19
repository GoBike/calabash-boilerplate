@signup
Feature: Sign Up feature
As a Customer
I want to Sign Up
So that I can create my account

  Scenario: As a on sign up screen, I see valid sign up view
    When I press "ALLOW"
    Given I am on the Sign up screen
    Then I should be on the Sign Up screen

  Scenario: As a enter blank email, I see blank email alert
#    When I press "OK"
    Given I am on the Sign up screen
    When I touch NEXT button
    Then I should see message email blank alert in Sign Up screen

  Scenario: As a enter invalid email format 1, I see email format alert
#    When I press "OK"
    Given I am on the Sign up screen
    When I sign up in as "test"
    Then I should see message email format alert in Sign Up screen

  Scenario: As a enter invalid email format 2, I see email format alert
#    When I press "OK"
    Given I am on the Sign up screen
    When I sign up in as "test@"
    Then I should see message email format alert in Sign Up screen

  Scenario: As a enter invalid email format 3, I see email format alert
#    When I press "OK"
    Given I am on the Sign up screen
    When I sign up in as "test@gobike"
    Then I should see message email format alert in Sign Up screen
