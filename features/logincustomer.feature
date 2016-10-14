@login
Feature: Login feature
As a Customer
I want to Login
So that I can login to home screen

  Scenario: As a on login screen, I see valid login view.
    When I press "OK"
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I should be on the Login screen of "Customer" app

  Scenario: As a enter Email is blank, I see message Email blank alert.
    When I press "OK"
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I scroll down
    When I touch LOGIN button
    Then I touch Enter Your Password
    Then I should be see message password blank alert in "Customer" app

  Scenario: As a enter invalid Email format 1, I see message invalid email alert.
    When I press "OK"
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as "testlogin"
    Then I scroll down
    When I touch LOGIN button
    Then I should see message email format alert in Login screen "Customer" app

  Scenario: As a enter invalid Email format 2, I see message invalid email alert.
    When I press "OK"
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as "testlogin@"
    Then I scroll down
    Then I touch LOGIN button
    Then I should see message email format alert in Login screen "Customer" app

  Scenario: As a enter invalid Email format 3, I see message invalid email alert.
    When I press "OK"
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as "testlogin@gmail"
    Then I scroll down
    Then I touch LOGIN button
    Then I should see message email format alert in Login screen "Customer" app

  Scenario: As a enter invalid email and password, I see message Account does not exist.
    When I press "OK"
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as email "testlogin@gmail.com" with password "123456" in "Customer" app
    Then I scroll down
    Then I touch LOGIN button
    Then I wait for progress
#    Then I wait up to 30 seconds to see "Account does not exist."
    Then I touch email phone edittext
    Then I should see message account done not exist alert

  Scenario: As a enter invalid password, I see message incorrect password.
    When I press "OK"
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as email "customera76@gmail.com" with password "123456" in "Customer" app
    Then I scroll down
    Then I touch LOGIN button
    Then I wait for progress
    Then I wait up to 30 seconds to see "Incorrect current password."

  Scenario: As a valid user I can Login into my app
    When I press "OK"
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as email "customera76@gmail.com" with password "taipower" in "Customer" app
    Then I scroll down
    Then I touch LOGIN button
	Then I wait up to 30 seconds to see "Go Ride"
    Then I wait for 5 seconds    
    Then I want to logout in "Customer" app
    Then I wait for 3 seconds
    Then I press "YES"
    Then I wait for progress
    Then I wait for 3 seconds
