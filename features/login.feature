@login
Feature: Login feature
As a Biker
I want to Login into home
So that I am on home

  Scenario: As on Login screen, App show login view
    Given I am on the Login screen
    Then I see login view

  Scenario: As Email and Password are blank, I see message "Email cannot be blank"
    Given I am on the Login screen
    When I touch LOGIN button
    Then I should see message email blank alert

  Scenario: As invalid Email format 1, I see message "Invalid Email Format"
    Given I am on the Login screen
    When I login in as "test" with password ""
    Then I should see message email format alert

  Scenario: As invalid Email format 2, I see message "Invalid Email Format"
    Given I am on the Login screen
    When I login in as "test@" with password ""
    Then I should see message email format alert

  Scenario: As Password is blank, I see message "Password cannot be blank"
    Given I am on the Login screen
    When I login in email as "demo@asia.com"
    Then I should see message password blank alert

  Scenario: As email is invalid and password is valid, I see message "Account does not exist."
    Given I am on the Login screen
    When I login in as "demo@gmail.com" with password "88888"
    Then I wait for progress
#    Then I wait for 2 seconds
#    Then I should see message account done not exist alert
    Then I wait up to 30 seconds to see "Account does not exist."

  Scenario: As email is valid and password is invalid, I see message "Incorrect current password."
    Given I am on the Login screen
    When I login in as "demo@gobike.asia" with password "123456"
    Then I wait for progress
#    Then I wait for 2 seconds
#    Then I should see message Incorrect current password alert
    Then I wait up to 30 seconds to see "Incorrect current password."

  Scenario: As email and password are invalid, I see message "Account does not exist."
    Given I am on the Login screen
    When I login in as "demo@gmail.com" with password "123456"
    Then I wait for progress
#    Then I wait for 2 seconds
#    Then I should see message account done not exist alert
    Then I wait up to 30 seconds to see "Account does not exist."

  Scenario: As a valid user I can login into home
    Given I am on the Login screen
    When I login in as "tai@gobike.asia" with password "taipower18"
    Then I should be on the Home screen
    Then I want to logout
