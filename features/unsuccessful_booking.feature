@unsuccessful_booking
Feature: Unsuccessful Booking Feature
As a Customer
I want to see message Booking alert
So that I unsuccessful booking

  Scenario: As a enter empty location, I see message alert
    When I press "ALLOW"
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as email "customera76@gmail.com" with password "taipower" in "Customer" app
    Then I scroll down
    Then I touch LOGIN button
    Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    Then I touch Go Ride button
    Then I wait up to 30 seconds to see "CHECK FARE"
    Then I touch CHECK FARE button
    Then I should be see message choose location alert
	Then I go back

  Scenario: As a enter the same start and end point, I see message the same location alert
#    When I press "OK"
    Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    Then I touch Go Ride button
    Then I wait up to 30 seconds to see "CHECK FARE"
    When I touch Pick Up
    Then I search location in as "Darulm" with selected "Darulmuhayirin Mosque"
    When I touch Drop Off
    Then I search location in as "Darulm" with selected "Darulmuhayirin Mosque"
    Then I should be see the same point dialog alert
    Then I touch OK button
    Then I go back

  Scenario: As a enter Tip more than 100 Bath, I see message Tip alert.
#    When I press "OK"
    Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    Then I touch Go Ride button
    Then I wait up to 30 seconds to see "CHECK FARE"
    When I touch Pick Up
    Then I search location in as "Darulm" with selected "Darulmuhayirin Mosque"
    When I touch Drop Off
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    Then I should see text containing "(25"
    When I enter booking by note in as "" ,Tip in as 102 Baht and promo code in as ""
    Then I should see text containing "(127"
    Then I touch BOOK BIKER Button
    When I touch Enter Tip
    Then I should be see message Tip alert
    Then I go back
    Then I go back
    Then I go back

  Scenario: As a enter drop off more than 50 km., I see message long distance alert
#    When I press "OK"
    Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    Then I touch Go Ride button
    Then I wait up to 30 seconds to see "CHECK FARE"
    When I touch Pick Up
    Then I search location in as "Darulm" with selected "Darulmuhayirin Mosque"
    When I touch Drop Off
    Then I search location in as "patt" with selected "Pattaya"
    Then I should be see message distance too far alert
    Then I touch OK button
    Then I go back

  Scenario: As a enter invalid promo code, I see message invalid promo code alert
 #   When I press "OK"
    Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    Then I touch Go Ride button
    Then I wait up to 30 seconds to see "CHECK FARE"
    When I touch Pick Up
    Then I search location in as "Darulm" with selected "Darulmuhayirin Mosque"
    When I touch Drop Off
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    Then I should see text containing "(25"
    When I enter booking by note in as "Test Go Ride 1" ,Tip in as 0 Baht and promo code in as "testfree25"
    When I touch CONFIRM Button
    Then I wait for 5 seconds
    Then I should be see message promo code alert
    Then I go back
    Then I go back
    Then I go back
