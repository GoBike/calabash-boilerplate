Given(/^I am on the Login screen$/) do
  login_screen = page(LoginScreen).await
end

When(/^I login in as "(.*?)" with password "(.*?)"$/) do |email, password|
  page(LoginScreen).login(email, password)
end

When(/^I login in email as "(.*?)"$/) do |email|
  page(LoginScreen).passwordBlank(email)
end

When(/^I touch LOGIN button$/) do
  page(LoginScreen).touchLogin
end

Then(/^I see login view$/) do
  page(LoginScreen).loginView
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

Then(/^I should see message account exit alert$/) do
  page(LoginScreen).showMessageAccountNotExit
end

Then(/^I should be on the Home screen$/) do
  home_screen = page(HomeScreen).await
end

Then(/^I see slider view$/) do
  page(HomeScreen).sliderView
end

Then(/^I touch account$/) do
  page(HomeScreen).touchAccount
end

Then(/^I touch history$/) do
  page(HomeScreen).touchHistory
end

Then(/^I touch logout$/) do
  page(HomeScreen).touchLogout
end

Then(/^I see account detail$/) do
  page(HomeScreen).accountDetailFirst
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
