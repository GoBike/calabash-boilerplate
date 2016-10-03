@login
Feature: Login feature
As a Customer
I want to Login
So that I can login to home screen

  Scenario: As a on login screen, I see valid login view.
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I should be on the Login screen

  Scenario: As a enter Email is blank, I see message Email blank alert.
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I touch LOGIN button
    Then I touch Enter Your Email
    Then I should be see email blank alert in Login screen

  Scenario: As a enter Email is blank, I see message Email blank alert.
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I touch LOGIN button
    Then I touch Enter Your Password
    Then I should be see password blank alert in Login screen

  Scenario: As a enter invalid Email format 1, I see message invalid email alert.
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as "testlogin"
    Then I scroll down
    Then I touch LOGIN button
    Then I should see message email format alert in Login screen

  Scenario: As a enter invalid Email format 2, I see message invalid email alert.
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as "testlogin@"
    Then I scroll down
    Then I touch LOGIN button
    Then I should see message email format alert in Login screen

  Scenario: As a enter invalid Email format 3, I see message invalid email alert.
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as "testlogin@gmail"
    Then I scroll down
    Then I touch LOGIN button
    Then I should see message email format alert in Login screen

  Scenario: As a enter invalid email and password, I see message Account does not exist.
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as email "testlogin@gmail.com" with password "123456"
    Then I scroll down
    Then I touch LOGIN button
    Then I wait for progress
#    Then I wait for 2 seconds
#    Then I should be see message account does not exist
    Then I wait up to 30 seconds to see "Account does not exist."

  Scenario: As a enter invalid password, I see message incorrect password.
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as email "customera76@gmail.com" with password "123456"
    Then I scroll down
    Then I touch LOGIN button
    Then I wait for progress
#    Then I wait for 2 seconds
#    Then I should be see message incorrect password alert
    Then I wait up to 30 seconds to see "Incorrect current password."

  Scenario: As a valid user I can Login into my app
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as email "customera76@gmail.com" with password "taipower18"
    Then I scroll down
    Then I touch LOGIN button
    Then I wait for progress
    Then I should be on the Home screen
    Then I want to logout
