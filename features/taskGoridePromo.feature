@task
Feature: Task Feature
As a Biker
I want to Task have Tip and Promotion from customer
So that I can send customer from start to end point

  Scenario: As a choose task have tip and promo in first times, I can send customer from start to end point
    Given I am on the Home screen by login in as "tai@gobike.asia" with password "taipower"
    Then I should be on the Home screen
    Then I want to my Account
    Then I want collect Credit and Payout balance value
    Then I want to my Task
    Then I wait up to 120 seconds to see "Go Ride"
    Then I press list item number 1
    Then I wait for progress
    Then I wait for 3 seconds
    Then I should be see TRIP FARE in as 30 Baht,DISCOUNT in as 25 Baht,TIP in as 15 Baht,SERVICE in as "Go Ride" ,TYPE in as "-" and PLEASE COLLECT in as 20 Baht
    Then I scroll down
    Then I should be see Note To Biker in as "Go Ride Promo 1"
    When I touch REQUEST TASK
    Then I wait for progress
    Then I scroll down
    Then I wait up to 60 seconds for "CANCEL TASK" to appear
    Then I wait for 10 seconds
    When I touch PICKED UP CUSTOMER button
    Then I wait up to 60 seconds for "DROPPED OFF" to appear
    Then I wait for 10 seconds
    When I touch DROPPED OFF button
    Then I wait for progress
    Then I wait for 3 seconds
    Then I should be see FARE "20.0 thb"
    Then I should be see message discount "25.0" Baht will transfer to your account
    When Biker let Rating "4.0"
    Then I wait for 3 seconds
    Then I want to my Account
    Then I should be see Payout balance added 25 Baht
    Then I want to logout

  Scenario: As a choose task have tip and promo in second times, I can send customer from start to end point
    Given I am on the Home screen by login in as "tai@gobike.asia" with password "taipower"
    Then I should be on the Home screen
    Then I want to my Account
    Then I want collect Credit and Payout balance value
    Then I want to my Task
    Then I wait up to 120 seconds to see "Go Ride"
    Then I press list item number 1
    Then I wait for progress
    Then I wait for 3 seconds
    Then I should be see TRIP FARE in as 25 Baht,DISCOUNT in as 25 Baht,TIP in as 5 Baht,SERVICE in as "Go Ride" ,TYPE in as "-" and PLEASE COLLECT in as 5 Baht
    Then I scroll down
    Then I should be see Note To Biker in as "Go Ride Promo 1"
    When I touch REQUEST TASK
    Then I wait for progress
    Then I scroll down
    Then I wait up to 60 seconds for "CANCEL TASK" to appear
    Then I wait for 10 seconds
    When I touch PICKED UP CUSTOMER button
    Then I wait up to 60 seconds for "DROPPED OFF" to appear
    Then I wait for 10 seconds
    When I touch DROPPED OFF button
    Then I wait for progress
    Then I wait for 3 seconds
    Then I should be see FARE "5.0 thb"
    Then I should be see message discount "25.0" Baht will transfer to your account
    When Biker let Rating "4.0"
    Then I wait for 3 seconds
    Then I want to my Account
    Then I should be see Payout balance added 25 Baht
    Then I want to logout
