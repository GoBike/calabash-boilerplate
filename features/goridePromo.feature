@go_ride_promo
Feature: Go Ride Promotion Feature
As a Customer
I want to use Promotion for Go Ride
So that I can travel from start and end point and get discount

  Scenario: As a travel enter Tip and Promo for first times, I successful travel.
    Given I am on the Passenger screen by login in as email "customera6666@gmail.com" with password "taipower"
    Then I wait for progress
    Then I wait for 15 seconds
    When I touch Pick Up
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    When I touch Drop Off
    Then I search location in as "phra ram 9" with selected "Phra Ram 9 MRT Station"
    Then I should see text containing "(30"
    When I enter booking by note in as "Go Ride Promo 1" ,Tip in as 15 Baht and promo code in as "free25"
    Then I should see text containing "(45"
    When I touch CONFIRM Button
    Then I should see text containing "(Discount 25"
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
    Then I should be see total fare is 20 thb
    Then I should be see Biker name is "Wichian Chotwattana" in Rating Screen
    Then I should be see Biker number is "853" in Rating Screen
    When Customer let rating "4.0"
    Then I touch OK Feedback
    Then I wait for progress
    Then I wait for 3 seconds
    Then I want to logout

  Scenario: As a travel enter Tip and Promo for second times, I successful travel.
    Given I am on the Passenger screen by login in as email "customera6666@gmail.com" with password "taipower"
    Then I wait for progress
    Then I wait for 15 seconds
    When I touch Pick Up
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    When I touch Drop Off
    Then I search location in as "the street r" with selected "The Street Ratchada"
    Then I should see text containing "(25"
    When I enter booking by note in as "Go Ride Promo 2" ,Tip in as 5 Baht and promo code in as "free25"
    Then I should see text containing "(30"
    When I touch CONFIRM Button
    Then I should see text containing "(Discount 25"
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
    Then I should be see total fare is 5 thb
    Then I should be see Biker name is "Wichian Chotwattana" in Rating Screen
    Then I should be see Biker number is "853" in Rating Screen
    When Customer let rating "4.0"
    Then I touch OK Feedback
    Then I wait for progress
    Then I wait for 3 seconds
    Then I want to logout

  Scenario: As a travel enter Tip and Promo for third times, I see message promotion alert.
    Given I am on the Passenger screen by login in as email "customera6666@gmail.com" with password "taipower"
    Then I wait for progress
    Then I wait for 15 seconds
    When I touch Pick Up
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    When I touch Drop Off
    Then I search location in as "darulmu" with selected "Darulmuhayirin Mosque"
    Then I should see text containing "(25"
    When I enter booking by note in as "Go Ride Promo 3" ,Tip in as 5 Baht and promo code in as "free25"
    Then I should see text containing "(30"
    When I touch CONFIRM Button
    Then I should be see message promo code alert
    Then I go back
    Then I go back
    Then I go back
    Then I want to logout
