@go_ride
Feature: Go_Ride Feature
As a Customer
I want to use Go Ride
So that I can travel from start and end point

  Scenario: As a travel no enter Tip and Promo, I successful travel.
    Given I am on the Passenger screen by login in as email "customera76@gmail.com" with password "taipower"
    Then I wait for progress
    Then I wait for 15 seconds
    When I touch Pick Up
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    When I touch Drop Off
    Then I search location in as "central rama" with selected "Central rama 9"
    Then I should see text containing "(30"
    When I enter booking by note in as "Test Go Ride 2" ,Tip in as 0 Baht and promo code in as ""
    When I touch BOOK BIKER Button
    Then I wait for progress
    Then I wait for 3 seconds
    Then I should be see Finding biker
    Then I wait up to 60 seconds to see "Your Biker"
    Then I should be see Passenger Task Detail
    Then I should be see Biker name is "Wichian Chotwattana"
    Then I should be see Biker number is "853"
    Then I wait up to 60 seconds to see "On trip"
    Then I wait up to 60 seconds to see "Thank you!"
    Then I should be see total fare is 30 thb
    Then I should be see Biker name is "Wichian Chotwattana" in Rating Screen
    Then I should be see Biker number is "853" in Rating Screen
    When Customer let rating "4.0"
    Then I touch OK Feedback
    Then I wait for progress
    Then I wait for 3 seconds
    Then I want to logout

  Scenario: As a travel enter Tip and no enter Promo, I successful travel.
    Given I am on the Passenger screen by login in as email "customera76@gmail.com" with password "taipower"
    Then I wait for progress
    Then I wait for 15 seconds
    When I touch Pick Up
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    When I touch Drop Off
    Then I search location in as "central em" with selected "Central Embassy"
    Then I should see text containing "(50"
    When I enter booking by note in as "Test Go Ride 3" ,Tip in as 25 Baht and promo code in as ""
    Then I should see text containing "(75"
    When I touch BOOK BIKER Button
    Then I wait for progress
    Then I wait for 3 seconds
    Then I should be see Finding biker
    Then I wait up to 60 seconds to see "Your Biker"
    Then I should be see Passenger Task Detail
    Then I should be see Biker name is "Wichian Chotwattana"
    Then I should be see Biker number is "853"
    Then I wait up to 60 seconds to see "On trip"
    Then I wait up to 60 seconds to see "Thank you!"
    Then I should be see total fare is 75 thb
    Then I should be see Biker name is "Wichian Chotwattana" in Rating Screen
    Then I should be see Biker number is "853" in Rating Screen
    When Customer let rating "4.0"
    Then I touch OK Feedback
    Then I wait for progress
    Then I wait for 3 seconds
    Then I want to logout
