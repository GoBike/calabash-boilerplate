@unsuccessful_gobuy
Feature: Unsuccessful Go Buy Feature
As a Customer
I want to see message Go Buy alert
So that I unsuccessful Go Buy

  Scenario: As a enter empty Go Buy, I see description message alert
  	When I press "OK"
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as email "customera76@gmail.com" with password "taipower" in "Customer" app
    Then I scroll down
    Then I touch LOGIN button
    Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    When I touch Go Buy button
    Then I wait for 5 seconds
    Then I press "GOT IT"
    Then I wait for 5 seconds
    Then I press "GOT IT"
    Then I wait for 5 seconds
    Then I press "GOT IT"
    Then I wait up to 30 seconds to see "What to buy ?"
	Then I should be on the Go Buy screen
	When I touch CONFIRM button in Go Buy screen
	Then I should be see description item to buy message alert
	Then I go back    

  Scenario: As a enter Nearby more than 50 km., I see message long distance alert
  	When I press "OK"
  	Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    When I touch Go Buy button
	  Then I wait up to 30 seconds to see "What to buy ?"
	  Then I enter description order by "KFC Big Set 395 Bath"
	  When I touch CONFIRM button in Go Buy screen
	  Then I touch Nearby
	  Then I search location in as "Chon" with selected "Chon Buri"	
	  Then I should be see Distance is too far in Go Buy screen
	  Then I touch OK button
	  Then I go back

  Scenario: As a enter Tip more than 100 Bath, I see message Tip alert.
  	When I press "OK"
  	Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    When I touch Go Buy button
	  Then I wait up to 30 seconds to see "What to buy ?"
	  Then I enter description order by "McDonal Samulai hambaker 505.50 ฿"
	  When I touch CONFIRM button in Go Buy screen
	  Then I touch Nearby
	  Then I search location in as "Central ra" with selected "Central rama 9"
	  Then I should see text containing "(40"
	  When I enter booking by note in as "go buy 1" ,Tip in as 112 Baht and promo code in as ""
    Then I should see text containing "(152"
    Then I touch BOOK BIKER Button
    When I touch Enter Tip
    Then I should be see message Tip alert
    Then I go back
    Then I go back
    Then I go back

  Scenario: As a enter invalid promo code, I see message invalid promo code alert
  	When I press "OK"
  	Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    When I touch Go Buy button
	  Then I wait up to 30 seconds to see "What to buy ?"
	  Then I enter description order by "MK double set 1024 ฿"
	  When I touch CONFIRM button in Go Buy screen
	  Then I touch Nearby
	  Then I search location in as "Central Em" with selected "Central Embassy"
	  Then I should see text containing "(70"
	  When I enter booking by note in as "go buy 2" ,Tip in as 0 Baht and promo code in as "test promo"
	  When I touch CONFIRM Button
    Then I wait for 5 seconds
    Then I should be see message promo code alert
    Then I go back
    Then I go back
    Then I go back