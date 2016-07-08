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

Then(/^I touch logout$/) do
  page(HomeScreen).touchLogout
end
