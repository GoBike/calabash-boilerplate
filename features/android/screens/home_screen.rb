require 'calabash-android/abase'

class HomeScreen < Calabash::ABase
	include GoBike::AndroidHelpers

	def trait
		"* marked:'New Tasks'"
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

	def sliderView
		check_view(newTask)
		check_view(history)
		check_view(account)
		check_view(topUp)
		check_view(rate)
		check_view(report)
		check_view(setting)
		check_view(logout)
		touch(logout)
	end

	def checkNameBiker(name)
		checkValue(name_field,name)
	end

	def checkAccount(credit,payout,accountNo,referralCode)
		getAmountThai(credit_field,credit)
		getAmountThai(payout_field,payout)
		checkValue(accountNo_field,accountNo)
		checkValue(referralCode_field,referralCode)
	end

	def checkPersonalInfo(email,mobile,plateNo)
		checkValue(email_field,email)
		checkValue(contactNumber_field,mobile)
		checkValue(plateNumber_field,plateNo)
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

	def processToLogout
		touchScreen(10,10)
		tapButton('Logout')
		waitProgress
	end

	def processToTask
		touchScreen(10,10)
		tapButton('New Task')
	end

	def processToAccount
		touchScreen(10,10)
		tapButton('Account')
		waitProgress
	end

	def collectCreditAndPayout
		collectValueCreditAndPayout
	end

	def checkCreditAndPayoutGoRide(discount)
		checkValueCreditAndPayoutGoRide(discount)
	end

end
