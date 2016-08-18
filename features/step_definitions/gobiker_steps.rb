Given(/^I am on the Sign up screen$/) do
    signup_screen = page(SignupScreen).await
end

Given(/^I am on the Login screen$/) do
  login_screen = page(LoginScreen).await
end

Given(/^I am on the home screen by Login in as email "(.*?)" with password "(.*?)"$/) do |email,password|
  page(LoginScreen).processToHome(email,password)
end

Given(/^I am on the Passenger screen by login in as email "(.*?)" with password "(.*?)"$/) do |email, password|
  page(PassengerScreen).processToPassenger(email,password)
end

Then(/^I login in as email "(.*?)" with password "(.*?)"$/) do |email, password|
  page(LoginScreen).login(email, password)
end

When(/^I sign up in as "(.*?)"$/) do |email|
  page(SignupScreen).signupByEmail(email)
end

When(/^I touch NEXT button$/) do
  page(SignupScreen).touchNext
end

When(/^I touch LOGIN Tab$/) do
  page(LoginScreen).tapLogin
end

When(/^I touch Go Ride button$/) do
  page(PassengerScreen).touchGoRide
end

When(/^I touch Drop Off$/) do
  page(PassengerScreen).touchDropOff
end

When(/^I touch Pick Up$/) do
  page(PassengerScreen).touchPickUp
end

When(/^Customer let rating "([^\"]*)"$/) do |rating|
  page(RatingScreen).setRatingFromCustomer(rating)
end

When(/^I touch BOOK BIKER Button$/) do
  page(BookingScreen).touchBooking
end

When(/^I touch CONFIRM Button$/) do
  page(BookingScreen).touchConfirm
end

When(/^I touch Enter Tip$/) do
  page(BookingScreen).touchTip
end

When(/^I enter booking by note in as "(.*?)" ,Tip in as (\d+) Baht and promo code in as "(.*?)"$/) do |note,tip,promo|
  page(BookingScreen).enterBooking(note,tip,promo)
end

Then(/^I login in as "(.*?)"$/) do |email|
  page(LoginScreen).loginByEmail(email)
end

Then(/^I want to logout$/) do
  page(HomeScreen).processToLogout
end

Then(/^I want to Account$/) do
  page(HomeScreen).processToAccount
end

Then(/^I search location in as "(.*?)" with selected "(.*?)"$/) do |inSearch,chooseLocation|
  page(PassengerScreen).selectedLocation(inSearch,chooseLocation)
end

Then(/^I should be see my service$/) do
  page(HomeScreen).checkShowService
end

Then(/^I should be see slider view$/) do
  page(HomeScreen).checkSliderView
end

Then(/^I should be on the Login screen$/) do
  page(LoginScreen).loginView
end

Then(/^I should be on the Sign Up screen$/) do
  page(SignupScreen).checkSignupView
end

Then(/^I should see message email format alert in Sign Up screen$/) do
  page(SignupScreen).showMessageEmailFormat
end

Then(/^I should see message email format alert in Login screen$/) do
  page(LoginScreen).showMessageEmailFormat
end

Then(/^I should be see email blank alert in Sign Up screen$/) do
  page(SignupScreen).showMessageEmailBlank
end

Then(/^I should be see email blank alert in Login screen$/) do
  page(LoginScreen).showMessageEmailBlank
end

Then(/^I should be see password blank alert in Login screen$/) do
  page(LoginScreen).showMessagePassswordBlank
end

Then(/^I should be see message account does not exist$/) do
  page(LoginScreen).showMessageAccountNotExist
end

Then(/^I should be see message incorrect password alert$/) do
  page(LoginScreen).showMessagePasswordIncorrent
end

Then(/^I should be see message choose location alert$/) do
  page(PassengerScreen).checkChooseLocation
end

Then(/^I should be see the same point dialog alert$/) do
  page(PassengerScreen).checkTheSamePoint
end

Then(/^I should be see message Tip alert$/) do
  page(BookingScreen).checkMessageTip
end

Then(/^I should be see message promo code alert$/) do
  page(BookingScreen).checkMessagePromo
end

Then(/^I should be see message distance too far alert$/) do
  page(PassengerScreen).checkMessageDistanceFar
end

Then(/^I touch LOGIN button$/) do
  page(LoginScreen).touchLoginButton
end

Then(/^I touch Enter Your Email$/) do
  page(LoginScreen).touchEmail
end

Then(/^I touch Enter Your Password$/) do
  page(LoginScreen).touchPassword
end

Then(/^I should be on the Home screen$/) do
  home_screen = page(HomeScreen).await
end

Then(/^I should be see Account detail in as Name "(.*?)" ,EMAIL "(.*?)" ,PHONE NUMBER "(.*?)" and REFERRAL CODE "(.*?)"$/) do |name,email,mobile,referralCode|
  page(HomeScreen).checkAcoount(name,email,mobile,referralCode)
end

Then(/^I should be see Booking dialog$/) do
  page(BookingScreen).checkViewFARE
end

Then(/^I touch CHECK FARE button$/) do
  page(PassengerScreen).touchCheckFare
end

Then(/^I touch OK button$/) do
  page(BookingScreen).touchOK
end

Then(/^I should be see Finding biker$/) do
  page(FindingBikerScreen).checkFindingBiker
end

Then(/^I should be see Biker name is "([^\"]*)"$/) do |bikerNameValue|
  page(PassengerTaskDetailScreen).checkBikerName(bikerNameValue)
end

Then(/^I should be see Biker number is "([^\"]*)"$/) do |bikerNumberValue|
  page(PassengerTaskDetailScreen).checkBikerNumber(bikerNumberValue)
end

Then(/^I should be see Biker name is "([^\"]*)" in Rating Screen$/) do |bikerNameValue|
  page(RatingScreen).checkBikerName(bikerNameValue)
end

Then(/^I should be see Biker number is "([^\"]*)" in Rating Screen$/) do |bikerNumberValue|
  page(RatingScreen).checkBikerNumber(bikerNumberValue)
end

Then(/^I should be see Passenger Task Detail$/) do
  page(PassengerTaskDetailScreen).checkViewPassengerTaskDetail
end

Then(/^Biker Arriving in (\d+) min$/) do |timeValue|
  page(PassengerTaskDetailScreen).checkArriving(timeValue)
end

Then(/^I should be see status is "([^\"]*)"$/) do |statusValue|
  page(PassengerTaskDetailScreen).checkStatus(statusValue)
end

Then(/^I should be see total fare is (\d+) thb$/) do |totalFare|
  page(RatingScreen).checkTotal(totalFare)
end

Then(/^I touch OK Feedback$/) do
  page(RatingScreen).touchOK
end
