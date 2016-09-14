Given(/^I am on the Login screen$/) do
  login_screen = page(LoginScreen).await
end

Given(/^I am on the Home screen by login in as "(.*?)" with password "(.*?)"$/) do |email, password|
  page(TaskScreen).processToHome(email,password)
end

Given(/^I am on the Task Detail Screen$/) do
  taskDetail_screen = page(TaskDetailScreen).await
end

When(/^I login in as "(.*?)" with password "(.*?)"$/) do |email, password|
  page(LoginScreen).login(email, password)
end

When(/^I touch LOGIN button$/) do
  page(LoginScreen).touchLogin
end

When(/^I login in email as "(.*?)"$/) do |email|
  page(LoginScreen).passwordBlank(email)
end

When(/^I open Slide Bar Menu$/) do
  page(HomeScreen).openSlideMenu
end

When(/^I touch REQUEST TASK$/) do
  page(TaskDetailScreen).touchRequestTask
end

When(/^I touch PICKED UP CUSTOMER button$/) do
  page(TaskDetailScreen).touchPickedUpCustomer
end

When(/^I touch DROPPED OFF button$/) do
  page(TaskDetailScreen).touchDroppedOff
end

When(/^Biker let Rating "([^\"]*)"$/) do |rating|
  page(RatingScreen).setRatingFromBiker(rating)
end

Then(/^I see login view$/) do
  page(LoginScreen).loginView
end

Then(/^I want to logout$/) do
  page(HomeScreen).processToLogout
end

Then(/^I want to my Account$/) do
  page(HomeScreen).processToAccount
end

Then(/^I want to my Task$/) do
  page(HomeScreen).processToTask
end

Then(/^I should see message email blank alert$/) do
  page(LoginScreen).showMessageEmailBlank
end

Then(/^I should see message email format alert$/) do
  page(LoginScreen).showMessageEmailFormat
end

Then(/^I should see message password blank alert$/) do
  page(LoginScreen).showMessagePasswordBlank
end

Then(/^I should see message account done not exist alert$/) do
  page(LoginScreen).showMessageAccountNotExit
end

Then(/^I should see message Incorrect current password alert$/) do
  page(LoginScreen).showMessageIncorrectPassword
end

Then(/^I should be on the Home screen$/) do
  home_screen = page(HomeScreen).await
end

Then(/^I see slider view$/) do
  page(HomeScreen).sliderView
end

Then(/^I touch history$/) do
  page(HomeScreen).touchHistory
end

Then(/^I touch Logout$/) do
  page(HomeScreen).touchLogout
end

Then(/^I touch VIEW Button$/) do
  page(LoginScreen).touchView
end

Then(/^I touch DISMISS Button$/) do
  page(LoginScreen).touchDismiss
end

Then(/^I should be see biker name in as "([^\"]*)"$/) do |name|
  page(HomeScreen).checkNameBiker(name)
end

Then(/^I should be see account detail in as Account Number "([^\"]*)" and Referral Code "([^\"]*)"$/) do |accountNo,referralNo|
  page(HomeScreen).checkAccount(accountNo,referralNo)
end

Then(/^I should be see Personal INFO in as Email "([^\"]*)" ,Mobile Phone "([^\"]*)" and Plate Number "([^\"]*)"$/) do |email,mobile,plate|
  page(HomeScreen).checkPersonalInfo(email,mobile,plate)
end

Then(/^I see status "([^\"]*)" of list item number (\d+)$/) do |text, index|
	page(HomeScreen).checkStatusAtIndex(text,index)
end

Then(/^I see amount "([^\"]*)" of list item number (\d+)$/) do |text, index|
	page(HomeScreen).checkAmountAtIndex(text,index)
end

Then(/^I see fare "([^\"]*)" of list item number (\d+)$/) do |text, index|
	page(HomeScreen).checkFareAtIndex(text,index)
end

Then(/^I see service type "([^\"]*)" of list item number (\d+)$/) do |text, index|
	page(HomeScreen).checkServiceTypeAtIndex(text,index)
end

Then(/^I see task time "([^\"]*)" of list item number (\d+)$/) do |text, index|
	page(HomeScreen).checkTaskTimeAtIndex(text,index)
end

Then(/^I see pick up "([^\"]*)" of list item number (\d+)$/) do |text, index|
	page(HomeScreen).checkPickupAtIndex(text,index)
end

Then(/^I see pick up address "([^\"]*)" of list item number (\d+)$/) do |text, index|
	page(HomeScreen).checkPickupAddressAtIndex(text,index)
end

Then(/^I see drop off "([^\"]*)" of list item number (\d+)$/) do |text, index|
	page(HomeScreen).checkDropoffAtIndex(text,index)
end

Then(/^I see drop off address "([^\"]*)" of list item number (\d+)$/) do |text, index|
	page(HomeScreen).checkDropoffAddressAtIndex(text,index)
end

Then(/^I see distance "([^\"]*)" of list item number (\d+)$/) do |text, index|
	page(HomeScreen).checkDistanceAtIndex(text,index)
end

Then(/^I should be see TRIP FARE in as (\d+) Baht,DISCOUNT in as (\d+) Baht,TIP in as (\d+) Baht,SERVICE in as "([^\"]*)" ,TYPE in as "([^\"]*)" and PLEASE COLLECT in as (\d+) Baht$/) do |fareValue,discountValue,tipValue,typeValue,bikerValue,amountValue|
  page(TaskDetailScreen).checkInfo(fareValue,discountValue,tipValue,typeValue,bikerValue,amountValue)
end

Then(/^I should be see Note To Biker in as "([^\"]*)"$/) do |note|
  page(TaskDetailScreen).checkNote(note)
end

Then(/^I should be see message discount "([^\"]*)" Baht will transfer to your account$/) do |discount|
  message = '*This customer is entitled to GoBike ' << discount << ' discount. But no worries, we have reimbursed it to your account.'
  page(RatingScreen).checkDiscountTransfer(message)
end

Then(/^I should be see FARE "([^\"]*)"$/) do |fare|
  page(RatingScreen).checkFare(fare)
end

Then(/^I want collect Credit and Payout balance value$/) do
  page(HomeScreen).collectCreditAndPayout
end

Then(/^I should be see Payout balance added (\d+) Baht$/) do |discount|
  page(HomeScreen).checkCreditAndPayoutGoRide(discount)
end
