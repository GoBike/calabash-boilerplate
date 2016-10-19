@unsuccessful_messenger
Feature: Unsuccessful Messenger feature
As a Customer
I want to used Go Messenger Service
So that I unsuccessful in used messenger service

  Scenario: As a not enter drop off data of One Way and Round Trip, I see invalid request alert
    When I press "ALLOW"
#    Given I am on the Messenger screen by Login in as email "customera76@gmail.com" with password "taipower"
    Given I am on the Login screen
    When I touch LOGIN Tab
    Then I login in as email "customera76@gmail.com" with password "taipower" in "Customer" app
    Then I scroll down
    Then I touch LOGIN button
    Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    Then I touch Go Messenger button
    Then I wait up to 30 seconds to see "ONE WAY/ROUND TRIP"
    When I touch select Pick up address
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    Then I enter sender info in as name "Wichian" and mobile phone "0813504077"
    Then I wait for 3 seconds
    Then I scroll down
    Then I scroll down
    When I touch NEXT button in Messenger screen
    Then I wait for progress
    Then I wait up to 30 seconds to see "Invalid request."
    Then I wait for 3 seconds
    Then I scroll up
    Then I scroll up
    Then I tap Round Trip
    Then I wait for 3 seconds
    Then I scroll down
    Then I scroll down
    When I touch NEXT button in Messenger screen 
    Then I wait for progress
    Then I wait up to 30 seconds to see "Invalid request."
    Then I wait for 3 seconds
    Then I go back

  Scenario: As a not enter Sender info, I see mandatory alert
#    When I press "OK"
#    Given I am on the Messenger screen by Login in as email "customera76@gmail.com" with password "taipower"
    Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    Then I touch Go Messenger button
    Then I wait up to 30 seconds to see "ONE WAY/ROUND TRIP"
    When I touch select Pick up address
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    When I touch select Drop off address
    Then I search location in as "central rama" with selected "Central rama 9"
    When I touch Sender Name
    Then I should be see message This field is mandatory alert
    When I enter Sender name in as "Chotest"
    Then I touch Sender phone number
    When I touch Sender Name
    Then I touch Sender phone number
    Then I should be see message This field is mandatory alert
    Then I go back

  Scenario: As a enter incorrect phone format, I see incorrect phone format alert
#    When I press "OK"
#    Given I am on the Messenger screen by Login in as email "customera76@gmail.com" with password "taipower"
    Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    Then I touch Go Messenger button
    Then I wait up to 30 seconds to see "ONE WAY/ROUND TRIP"
    When I touch select Pick up address
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    Then I enter sender info in as name "Wichian" and mobile phone "08135"
    When I touch Sender Name
    Then I touch Sender phone number
    Then I should be see message Incorrect phone format alert
    Then I enter sender info in as name "Wichian" and mobile phone "08135###**"
    When I touch Sender Name
    Then I scroll down
    Then I touch Sender phone number
    Then I should be see message Incorrect phone format alert
    Then I scroll up
    Then I enter sender info in as name "Wichian" and mobile phone "0813504077"
    When I touch select Drop off address
    Then I search location in as "central wo" with selected "Central World"
    Then I scroll down
    Then I enter recipient info as name "Chot" and mobile phone "08177"
    When I touch Recipient name
    Then I touch Recipient phone number
    When I touch Recipient name
    Then I touch Recipient phone number
    Then I should be see message Incorrect phone format alert
    Then I enter recipient info as name "Chot1" and mobile phone "08177***##"
    When I touch Recipient name
    Then I touch Recipient phone number
    Then I should be see message Incorrect phone format alert
    Then I go back

  Scenario: As a enter Pick Up and Drop Off are the same, I see the same place alert
#    When I press "OK"
#    Given I am on the Messenger screen by Login in as email "customera76@gmail.com" with password "taipower"
    Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    Then I touch Go Messenger button
    Then I wait up to 30 seconds to see "ONE WAY/ROUND TRIP"
    When I touch select Pick up address
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    Then I enter sender info in as name "Wichian" and mobile phone "0813504077"
    When I touch select Drop off address
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    Then I should be see the same point dialog alert in Messenger screen
    Then I touch OK button
    Then I go back

  Scenario: As a enter too far distance, I see distance the too far alert
#    When I press "OK"
#    Given I am on the Messenger screen by Login in as email "customera76@gmail.com" with password "taipower"
    Then I wait up to 30 seconds to see "Go Ride"
    Given I am on the Home screen in Customer app
    Then I touch Go Messenger button
    Then I wait up to 30 seconds to see "ONE WAY/ROUND TRIP"
    When I touch select Pick up address
    Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
    Then I enter sender info in as name "Wichian" and mobile phone "0813504077"
    When I touch select Drop off address
    Then I search location in as "chon" with selected "Chon Buri"
    Then I scroll down
    Then I scroll down
    When I touch NEXT button in Messenger screen
    Then I wait for 3 seconds
    Then I should be see message distance too far alert
    Then I touch OK button
    Then I go back
