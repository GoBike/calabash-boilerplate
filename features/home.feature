@home
Feature: Home feature

  Scenario: As on Home screen, App show drawable view
    Given I am on the Login screen
    When I login in as "demo@gobike.asia" with password "88888"
    Then I should be on the Home screen
    Then I click on screen 10% from the left and 10% from the top
    Then I see slider view

  Scenario: As on Home screen, App show account detail
    Given I am on the Login screen
    When I login in as "demo@gobike.asia" with password "88888"
    Then I should be on the Home screen
    Then I click on screen 10% from the left and 10% from the top
    Then I touch account
    Then I see account detail
    Then I click on screen 10% from the left and 10% from the top
    Then I press "Logout"

  Scenario: As on Home screen, App show history detail
    Given I am on the Login screen
    When I login in as "demo@gobike.asia" with password "88888"
    Then I should be on the Home screen
    Then I click on screen 10% from the left and 10% from the top
    Then I press "History"
    Then I see status "Cancelled" of list item number 1
    Then I see amount "70" of list item number 1
    Then I see fare "FARE (฿)" of list item number 1
    Then I see service type "Go Messenger" of list item number 1
    Then I see task time "06-26-2016 01:07" of list item number 1
    Then I see pick up "Pick Up" of list item number 1
    Then I see drop off "Drop Off" of list item number 1
    Then I see distance "1.59 KM" of list item number 1
    Then I see status "Cancelled" of list item number 2
    Then I see amount "70" of list item number 2
    Then I see fare "FARE (฿)" of list item number 2
    Then I see service type "Go Messenger" of list item number 2
    Then I see task time "06-26-2016 01:04" of list item number 2
    Then I see pick up "Pick Up" of list item number 2
    Then I see drop off "Drop Off" of list item number 2
    Then I see distance "1.59 KM" of list item number 2
    Then I see status "Cancelled" of list item number 3
    Then I see amount "70" of list item number 3
    Then I see fare "FARE (฿)" of list item number 3
    Then I see service type "Go Messenger" of list item number 3
    Then I see task time "06-26-2016 01:02" of list item number 3
    Then I see pick up "Pick Up" of list item number 3
    Then I see drop off "Drop Off" of list item number 3
    Then I see distance "1.59 KM" of list item number 3
    Then I scroll down
    Then I see status "Cancelled" of list item number 1
    Then I see amount "70" of list item number 1
    Then I see fare "FARE (฿)" of list item number 1
    Then I see service type "Go Messenger" of list item number 1
    Then I see task time "06-26-2016 00:58" of list item number 1
    Then I see pick up "Pick Up" of list item number 1
    Then I see drop off "Drop Off" of list item number 1
    Then I see distance "1.59 KM" of list item number 1
    Then I see status "Cancelled" of list item number 2
    Then I see amount "70" of list item number 2
    Then I see fare "FARE (฿)" of list item number 2
    Then I see service type "Go Messenger" of list item number 2
    Then I see task time "06-26-2016 00:48" of list item number 2
    Then I see pick up "Pick Up" of list item number 2
    Then I see drop off "Drop Off" of list item number 2
    Then I see distance "1.59 KM" of list item number 2
    Then I see status "Completed" of list item number 3
    Then I see amount "170" of list item number 3
    Then I see fare "FARE (฿)" of list item number 3
    Then I see service type "Go Messenger" of list item number 3
    Then I see task time "06-14-2016 18:48" of list item number 3
    Then I see pick up "Pick Up" of list item number 3
    Then I see drop off "Drop Off" of list item number 3
    Then I see distance "10.32 KM" of list item number 3
    Then I scroll down
    Then I see status "Completed" of list item number 3
    Then I see amount "120" of list item number 3
    Then I see fare "FARE (฿)" of list item number 3
    Then I see service type "Go Ride" of list item number 3
    Then I see task time "04-22-2016 15:17" of list item number 3
    Then I see pick up "Pick Up" of list item number 3
    Then I see drop off "Drop Off" of list item number 3
    Then I see distance "12.1 KM" of list item number 3
    Then I click on screen 10% from the left and 10% from the top
    Then I press "Logout"
