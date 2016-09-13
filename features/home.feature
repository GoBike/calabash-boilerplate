@home
Feature: home feature
As a Customer
I want to open App
So that it action on my service

  Scenario: As a on home screen, I see my service
    Given I am on the home screen by Login in as email "customera76@gmail.com" with password "taipower"
    Then I should be on the Home screen
    Then I should be see my service
    Then I want to logout

  Scenario: As a on home screen, I see valid slider view
    Given I am on the home screen by Login in as email "customera76@gmail.com" with password "taipower"
    Then I should be on the Home screen
    When I open Slide Bar Menu
    Then I should be see slider view

  Scenario: As a on home screen, I see my detail account info
    Given I am on the home screen by Login in as email "customera76@gmail.com" with password "taipower"
    Then I should be on the Home screen
    Then I want to Account
    Then I should be see Account detail in as Name "testcutomera" ,EMAIL "customera76@gmail.com" ,PHONE NUMBER "+66813504177" and REFERRAL CODE "0D68AL"
    Then I want to logout
