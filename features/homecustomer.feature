@home
Feature: home feature
As a Customer
I want to open App
So that it action on my service

  Scenario: As a on home screen, I see my service
    When I press "OK"
    Given I am on the Home screen by Login in as email "customera76@gmail.com" with password "taipower" in "Customer" app
    Then I wait for progress
    Then I wait for 3 seconds
    Then I should be see my service
    Then I want to logout in "Customer" app

#  Scenario: As a on home screen, I see valid slider view
#    Given I am on the home screen by Login in as email "customera76@gmail.com" with password "taipower" in "Customer" app
#    When I open Slide Bar Menu
#    Then I should be see slider view

  Scenario: As a on home screen, I see my detail account info
    When I press "OK"
    Given I am on the Home screen by Login in as email "customera76@gmail.com" with password "taipower" in "Customer" app
    Then I wait for progress
    Then I wait for 3 seconds
    Then I want to my Account in "Customer" app
    Then I should be see Account detail in as Name "testcutomera" ,EMAIL "customera76@gmail.com" ,PHONE NUMBER "+66813504177" and REFERRAL CODE "0D68AL"
    Then I go back
    Then I want to logout in "Customer" app    
