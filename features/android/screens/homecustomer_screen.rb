require 'calabash-android/abase'

class HomeCustomerScreen < Calabash::ABase
	include GoBike::AndroidHelpers
	def trait
		"* marked:'Go Ride'"
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

	def settingsText
		"* marked:'Settings'"
	end

	def accountText
		"* marked:'Account'"
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

	def checkAcoountCustomer(name,email,mobile,referralCode)
		checkValue(namecustomer_field,name)
		checkValue(emailcustomer_field,email)
		checkValue(contactcustomer_field,mobile)
		checkValue(referralCodecustomer_field,referralCode)
	end

	def processToLogout
		touchScreen(10,10)
		tapButton('Settings')
		tapButton('Logout')
		waitProgress
	end

	def processToAccount
		touchScreen(10,10)
		touchScreen(10,200)
		touchScreen(10,10)
		tapButton('Settings')
		tapButton('Account')
		waitProgress
	end

	def touchGoRide
		touch(goRide)
	end

	def touchGoMessenger
		touch(goMessenger)
	end
end