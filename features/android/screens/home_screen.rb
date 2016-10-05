require 'calabash-android/abase'

class HomeScreen < Calabash::ABase
	include GoBike::AndroidHelpers

	def trait
		"* marked:'New Tasks'"
	end

	def goRide
		"* marked:'Go Ride'"
	end

	def rideSafely
		"* marked:'Ride Safely'"
	end

	def goMessenger
		"* marked:'Go Messenger'"
	end

	def delivery
		"* marked:'Delivery Fast & Safe'"
	end

	def goBuy
		"* marked:'Go Buy'"
	end

	def quickBuy
		"* marked:'Quick Buy & Reliable'"
	end

	def newTask
		"* marked:'New Task'"
	end

	def history
		"* marked:'History'"
	end

	def account
		"* marked:'Account'"
	end

	def topUp
		"* marked:'TopUp'"
	end

	def rate
		"* marked:'Rate Our App'"
	end

	def report
		"* marked:'Report Issues'"
	end

	def setting
		"* marked:'Settings'"
	end

	def logout
		"* marked:'Logout'"
	end

	def accountNumber
		"* marked:'Account Number'"
	end

	def refCode
		"* marked:'Referral Code'"
	end

	def personalInfo
		"* marked:'Personal Info'"
	end

	def email
		"* marked:'Email'"
	end

	def mobilePhone
		"* marked:'Mobile Phone'"
	end

	def plateNumber
		"* marked:'Plate Number'"
	end

	def changePassword
		"* marked:'Change Password'"
	end

	def name_field
		"* id:'biker_name'"
	end

	def credit_field
		"* id:'credit_balance'"
	end

	def payout_field
		"* id:'payout_balance'"
	end

	def accountNo_field
		"* id:'account_no'"
	end

	def referralCode_field
		"* id:'referral_code'"
	end

	def email_field
		"* id:'email'"
	end

	def contactNumber_field
		"* id:'contact_number'"
	end

	def plateNumber_field
		"* id:'plate_number'"
	end

	def statusField
		"* id:'task_status'"
	end

	def amountField
		"* id:'total_amt'"
	end

	def fareField
		"* id:'fare_label'"
	end

	def serviceTypeField
		"* id:'service_type'"
	end

	def taskTimeField
		"* id:'tvw_task_time'"
	end

	def pickUpField
		"* id:'pickuplbl'"
	end

	def pickUpAddressField
		"* id:'pickup_location'"
	end

	def dropOffField
		"* id:'dropofflbl'"
	end

	def dropOffAddressField
		"* id:'dropoff_location'"
	end

	def distanceField
		"* id:'distance'"
	end

	def drawable_field
		"* id:'drawer_layout'"
	end

	def namecustomer_field
		"* id:'tvw_consumer_name'"
	end

	def emailcustomer_field
		"* id:'tvw_consumer_email'"
	end

	def contactcustomer_field
		"* id:'tvw_consumer_contact'"
	end

	def referralCodecustomer_field
		"* id:'tvw_consumer_referral_code'"
	end

	def checkShowService
		check_view(goRide)
		check_view(rideSafely)
		check_view(goBuy)
		check_view(quickBuy)
		check_view(goMessenger)
		check_view(delivery)
	end

	def sliderView
		check_view(newTask)
		check_view(history)
		check_view(account)
		check_view(topUp)
		check_view(rate)
		check_view(report)
		check_view(setting)
		check_view(logout)
		tapButton('Logout')
		waitProgress
	end

	def checkNameBiker(name)
		checkValue(name_field,name)
	end

	def checkAccountBiker(accountNo,referralCode)
		checkValue(accountNo_field,accountNo)
		checkValue(referralCode_field,referralCode)
	end

	def checkPersonalInfo(email,mobile,plateNo)
		checkValue(email_field,email)
		checkValue(contactNumber_field,mobile)
		checkValue(plateNumber_field,plateNo)
	end

	def checkAcoountCustomer(name,email,mobile,referralCode)
		checkValue(namecustomer_field,name)
		checkValue(emailcustomer_field,email)
		checkValue(contactcustomer_field,mobile)
		checkValue(referralCodecustomer_field,referralCode)
	end

	def checkStatusAtIndex(text,index)
		checkHistoryAtIndex(statusField,text,index)
	end

	def checkAmountAtIndex(text,index)
		checkHistoryAtIndex(amountField,text,index)
	end

	def checkFareAtIndex(text,index)
		checkHistoryAtIndex(fareField,text,index)
	end

	def checkServiceTypeAtIndex(text,index)
		checkHistoryAtIndex(serviceTypeField,text,index)
	end

	def checkTaskTimeAtIndex(text,index)
		checkHistoryAtIndex(taskTimeField,text,index)
	end

	def checkPickupAtIndex(text,index)
		checkHistoryAtIndex(pickUpField,text,index)
	end

	def checkPickupAddressAtIndex(text,index)
		checkHistoryAtIndex(pickUpAddressField,text,index)
	end

	def checkDropoffAtIndex(text,index)
		checkHistoryAtIndex(dropOffField,text,index)
	end

	def checkDropoffAddressAtIndex(text,index)
		checkHistoryAtIndex(dropOffAddressField,text,index)
	end

	def checkDistanceAtIndex(text,index)
		checkHistoryAtIndex(distanceField,text,index)
	end

	def touchHistory
		touch(history)
	end

	def touchAccount
		touch(account)
	end

	def openSlideMenu
		touchScreen(10,10)
	end

	def touchLogout
		tapButton('Logout')
	end

	def processToLogout(app)
		if app == 'Biker'
			touchScreen(10,10)
			tapButton('Logout')
			waitProgress
		else
			touchScreen(10,10)
			tapButton('Settings')
			tapButton('Logout')
			waitProgress
		end
	end

	def processToTask
		touchScreen(10,10)
		tapButton('New Task')
	end

	def processToAccount(app)
		if app == 'Biker'
			touchScreen(10,10)
			tapButton('Account')
			waitProgress	
		else
			touchScreen(10,10)
			tapButton('Settings')
			tapButton('Account')
			waitProgress
		end
	end

	def collectCreditAndPayout
		collectValueCreditAndPayout
	end

	def checkCreditAndPayoutGoRide(discount)
		checkValueCreditAndPayoutGoRide(discount)
	end

end
