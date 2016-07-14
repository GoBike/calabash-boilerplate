require 'calabash-android/abase'

class HomeScreen < Calabash::ABase
	include GoBike::AndroidHelpers

	def trait
		"* marked:'New Tasks'"
	end

	def name
		"* marked:'อภิศักดิ์ สันติชัยรัตน์'"
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

	def balance
		"* marked:'Balance'"
	end

	def amount
		"* marked:'991 ฿'"
	end

	def accountNumber
		"* marked:'Account Number'"
	end

	def accountRef
		"* marked:'1000001'"
	end

	def refCode
		"* marked:'Referral Code'"
	end

	def code
		"* marked:'086NVR'"
	end

	def personalInfo
		"* marked:'Personal Info'"
	end

	def email
		"* marked:'Email'"
	end

	def emailValue
		"* marked:'demo@gobike.asia'"
	end

	def mobilePhone
		"* marked:'Mobile Phone'"
	end

	def mobilePhoneValue
		"* marked:'+66823253994'"
	end

	def plateNumber
		"* marked:'Plate Number'"
	end

	def changePassword
		"* marked:'Change Password'"
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

	def sliderView
		check_view(name)
		check_view(newTask)
		check_view(history)
		check_view(account)
		check_view(rate)
		check_view(report)
		check_view(setting)
		check_view(logout)
		touch(logout)
	end

	def accountDetailFirst
		touch(account)
		check_view(name)
		check_view(account)
		check_view(balance)
		check_view(amount)
		check_view(accountNumber)
		check_view(accountRef)
		check_view(refCode)
		check_view(code)
		check_view(personalInfo)
		check_view(email)
		check_view(emailValue)
		check_view(mobilePhone)
		check_view(mobilePhoneValue)
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

	def touchLogout
		touch(logout)
	end

end
