@login
Feature: Login feature
As a Biker
I want to Login into home
So that I am on home

  Scenario: As on Login screen, App show login view
    Given I am on the Login screen
    Then I should be on the Login screen of "Biker" app

  Scenario: As Email and Password are blank, I see message "Email cannot be blank"
    Given I am on the Login screen
    When I touch LOGIN button
    Then I should see message email blank alert in Login screen

  Scenario: As invalid Email format 1, I see message "Invalid Email Format"
    Given I am on the Login screen
    When I login in as "test" with password "" in Login screen
    Then I should see message email format alert in Login screen "Biker" app

  Scenario: As invalid Email format 2, I see message "Invalid Email Format"
    Given I am on the Login screen
    When I login in as "test@" with password "" in Login screen
    Then I should see message email format alert in Login screen "Biker" app

  Scenario: As Password is blank, I see message "Password cannot be blank"
    Given I am on the Login screen
    When I login in as "demo@asia.com" with password "" in Login screen
    Then I touch Password
    Then I should be see message password blank alert in "Biker" app

  Scenario: As email is invalid and password is valid, I see message "Account does not exist."
    Given I am on the Login screen
    When I login in as "demo@gmail.com" with password "88888" in Login screen
    Then I wait for progress
    Then I wait up to 30 seconds to see "Account does not exist."

  Scenario: As email is valid and password is invalid, I see message "Incorrect current password."
    Given I am on the Login screen
    When I login in as "demo@gobike.asia" with password "123456" in Login screen
    Then I wait for progress
    Then I wait up to 30 seconds to see "Incorrect current password."

  Scenario: As email and password are invalid, I see message "Account does not exist."
    Given I am on the Login screen
    When I login in as "demo@gmail.com" with password "123456" in Login screen
    Then I wait for progress
    Then I wait up to 30 seconds to see "Account does not exist."

  Scenario: As a valid user I can login into home
    Given I am on the Login screen
    When I login in as "tai@gobike.asia" with password "taipower" in Login screen
    Then I should be on the Home screen
    Then I want to logout in "Biker" app
