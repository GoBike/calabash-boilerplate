Given(/^I am on the Sign up screen$/) do
    signup_screen = page(SignupScreen).await
end

Given(/^I am on the Login screen$/) do
  login_screen = page(LoginScreen).await
end

Given(/^I am on the Home screen in Customer app$/) do
  homecustomer = page(HomeCustomerScreen).await
end

Given(/^I am on the Home screen by Login in as email "(.*?)" with password "(.*?)" in "(.*?)" app$/) do |email, password,app|
  page(LoginScreen).processToHome(email,password,app)
end

Given(/^I am on the Passenger screen by Login in as email "(.*?)" with password "(.*?)"$/) do |email, password|
  page(PassengerScreen).processToPassenger(email,password)
end

Given(/^I am on the Messenger screen by Login in as email "(.*?)" with password "(.*?)"$/) do |email,password|
  page(MessengerScreen).processToMessenger(email,password)
end

Given(/^I am on the Task Detail Screen$/) do
  taskDetail_screen = page(TaskDetailScreen).await
end

When(/^I sign up in as "(.*?)"$/) do |email|
  page(SignupScreen).signupByEmail(email)
end

When(/^I login in as "(.*?)" with password "(.*?)" in Login screen "(.*?)" app$/) do |email, password,app|
  page(LoginScreen).login(email, password,app)
end

When(/^I enter booking by note in as "(.*?)" ,Tip in as (\d+) Baht and promo code in as "(.*?)"$/) do |note,tip,promo|
  page(BookingScreen).enterBooking(note,tip,promo)
end

When(/^I touch Email$/) do
  page(SignupScreen).touchEmailPhone
end

When(/^I touch NEXT button$/) do
  page(SignupScreen).touchNext
end

When(/^I touch NEXT button in Messenger screen$/) do
  page(MessengerScreen).touchNext
end

When(/^I touch LOGIN Tab$/) do
  page(LoginScreen).tapLogin
end

When(/^I touch LOGIN button$/) do
  page(LoginScreen).touchLogin
end

When(/^I login in email as "(.*?)"$/) do |email|
  page(LoginScreen).passwordBlank(email)
end

When(/^I enter Sender name in as "(.*?)"$/) do |name|
  page(MessengerScreen).enterSenderName(name)
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

When(/^I touch Pick Up$/) do
  page(PassengerScreen).touchPickUp
end

When(/^I touch DROPPED OFF button$/) do
  page(TaskDetailScreen).touchDroppedOff
end

When(/^I touch Drop Off$/) do
  page(PassengerScreen).touchDropOff
end

When(/^I touch Enter Tip$/) do
  page(BookingScreen).touchTip
end

When(/^I touch CONFIRM Button$/) do
  page(BookingScreen).touchConfirm
end

When(/^I touch select Pick up address$/) do
  page(MessengerScreen).touchPickUp
end

When(/^I touch select Drop off address$/) do
  page(MessengerScreen).touchDropOff
end

When(/^I touch Sender Name$/) do
  page(MessengerScreen).touchSenderName
end

When(/^I touch Recipient name$/) do
  page(MessengerScreen).touchRecipientName
end

When(/^I touch Go Buy button$/) do
  page(HomeCustomerScreen).touchGoBuy
end

When(/^I touch CONFIRM button in Go Buy screen$/) do
  page(GoBuyScreen).touchConfirm
end

When(/^Biker let Rating "([^\"]*)"$/) do |rating|
  page(RatingScreen).setRatingFromBiker(rating)
end

Then(/^I should be on the Sign Up screen$/) do
  page(SignupScreen).checkSignupView
end

Then(/^I should be on the Go Buy screen$/) do
  gobuy = page(GoBuyScreen).await
end

Then(/^I should be on the Login screen of "([^\"]*)" app$/) do |app|
  page(LoginScreen).loginView(app)
end

Then(/^I want to logout in "([^\"]*)" app$/) do |app|
  page(HomeScreen).processToLogout(app)
end

Then(/^I want to logout in Customer app$/) do
  page(HomeCustomerScreen).processToLogout
end

Then(/^I want to my Account in "([^\"]*)" app$/) do |app|
  page(HomeScreen).processToAccount(app)
end

Then(/^I want to my Account in Customer app$/) do
  page(HomeCustomerScreen).processToAccount
end

Then(/^I search location in as "(.*?)" with selected "(.*?)"$/) do |inSearch,chooseLocation|
  page(PassengerScreen).selectedLocation(inSearch,chooseLocation)
end

Then(/^I enter sender info in as name "(.*?)" and mobile phone "(.*?)"$/) do |name,phone|
  page(MessengerScreen).enterSender(name,phone)
end

Then(/^I enter recipient info as name "(.*?)" and mobile phone "(.*?)"$/) do |name,phone|
  page(MessengerScreen).enterRecipient(name,phone)
end

Then(/^I should be see my service$/) do
  page(HomeScreen).checkShowService
end

Then(/^I want to my Task$/) do
  page(HomeScreen).processToTask
end

Then(/^I should see message email format alert in Sign Up screen$/) do
  page(SignupScreen).showMessageEmailFormat
end

Then(/^I should see message email blank alert in Sign Up screen$/) do
  page(SignupScreen).showMessageEmailBlank
end

Then(/^I should see message email blank alert in Login screen$/) do
  page(LoginScreen).showMessageEmailBlank
end

Then(/^I should see message email format alert in Login screen "(.*?)" app$/) do |app|
  page(LoginScreen).showMessageEmailFormat(app)
end

Then(/^I should be see message password blank alert in "(.*?)" app$/) do |app|
  page(LoginScreen).showMessagePasswordBlank(app)
end

Then(/^I should see message account done not exist alert$/) do
  page(LoginScreen).showMessageAccountNotExit
end

Then(/^I should see message Incorrect current password alert$/) do
  page(LoginScreen).showMessageIncorrectPassword
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

Then(/^I should be see message distance too far alert$/) do
  page(PassengerScreen).checkMessageDistanceFar
end

Then(/^I should be see Distance is too far in Go Buy screen$/) do
  page(GoBuyScreen).checkMessageTooFar
end

Then(/^I should be see message promo code alert$/) do
  page(BookingScreen).checkMessagePromo
end

Then(/^I should be see message Invalid request alert$/) do
  page(MessengerScreen).checkInvaileMessage
end

Then(/^I should be see message This field is mandatory alert$/) do
  page(MessengerScreen).checkMandatoryMessage
end

Then(/^I should be see message Incorrect phone format alert$/) do
  page(MessengerScreen).checkIncorrectPhoneMessage
end

Then(/^I should be see the same point dialog alert in Messenger screen$/) do
  page(MessengerScreen).checkTheSamePlaceMessage
end

Then(/^I should be see description item to buy message alert$/) do
  page(GoBuyScreen).checkMessageDescription
end

Then(/^I login in as email "(.*?)" with password "(.*?)" in "(.*?)" app$/) do |email, password,app|
  page(LoginScreen).login(email, password,app)
end

Then(/^I login in as "(.*?)"$/) do |email|
  page(LoginScreen).loginByEmail(email)
end

Then(/^I enter description order by "(.*?)"$/) do |descriptionOrder|
  page(GoBuyScreen).enterOrder(descriptionOrder)
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

Then(/^I touch Enter Your Password$/) do
  page(LoginScreen).touchPassword
end

Then(/^I touch Password$/) do
  page(LoginScreen).touchTextPassword
end

Then(/^I touch Go Ride button$/) do
  page(HomeCustomerScreen).touchGoRide
end

Then(/^I touch Go Messenger button$/) do
  page(HomeCustomerScreen).touchGoMessenger
end

Then(/^I touch CHECK FARE button$/) do
  page(PassengerScreen).touchCheckFare
end

Then(/^I touch BOOK BIKER Button$/) do
  page(BookingScreen).touchBooking
end

Then(/^I touch Nearby$/) do
  page(GoBuyScreen).touchNearby
end

Then(/^I touch My Location$/) do
  page(GoBuyScreen).touchMyLocation
end

Then(/^I touch email phone edittext$/) do
  page(LoginScreen).touchEmailPhone
end

Then(/^I press back button$/) do
  page(PassengerScreen).touchBack
end

Then(/^I should be see biker name in as "([^\"]*)"$/) do |name|
  page(HomeScreen).checkNameBiker(name)
end

Then(/^I should be see account detail in as Account Number "([^\"]*)" and Referral Code "([^\"]*)"$/) do |accountNo,referralNo|
  page(HomeScreen).checkAccountBiker(accountNo,referralNo)
end

Then(/^I should be see Account detail in as Name "(.*?)" ,EMAIL "(.*?)" ,PHONE NUMBER "(.*?)" and REFERRAL CODE "(.*?)"$/) do |name,email,mobile,referralCode|
  page(HomeScreen).checkAcoountCustomer(name,email,mobile,referralCode)
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

Then(/^I touch OK button$/) do
  page(BookingScreen).touchOK
end

Then(/^I tap Round Trip$/) do
  page(MessengerScreen).tapRoundTrip
end

Then(/^I touch Sender phone number$/) do
  page(MessengerScreen).touchSenderPhone
end

Then(/^I touch Recipient phone number$/) do
  page(MessengerScreen).touchRecipientPhone
end

Then(/^I action on process walkthroug$/) do
  page(GoBuyScreen).walkthroughStep
end