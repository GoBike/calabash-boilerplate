require 'calabash-android/abase'

class HomeScreen < Calabash::ABase
	include GoBike::AndroidHelpers

	def trait
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

	def services
		"* marked:'Services'"
	end

	def onGoing
		"* marked:'Ongoing'"
	end

	def history
		"* marked:'History'"
	end

	def account
		"* marked:'Account'"
	end

	def inviteFriends
		"* marked:'Invite Friends'"
	end

	def rate
		"* marked:'Rate Our App'"
	end

	def report
		"* marked:'Report Issues'"
	end

	def settings
		"* marked:'Settings'"
	end

	def logout
		"* marked:'Logout'"
	end

	def name
		"* marked:'NAME'"
	end

	def email
		"* marked:'Email'"
	end

	def phone
		"* marked:'PHONE NUMBER'"
	end

	def referralCode
		"* marked:'Referral Code'"
	end

	def changePassword
		"* marked:'Change Password'"
	end

	def name_field
		"* id:'tvw_consumer_name'"
	end

	def email_field
		"* id:'tvw_consumer_email'"
	end

	def contact_field
		"* id:'tvw_consumer_contact'"
	end

	def referralCode_field
		"* id:'tvw_consumer_referral_code'"
	end

	def checkShowService
		check_view(trait)
		check_view(rideSafely)
		check_view(goMessenger)
		check_view(delivery)
	end

	def checkSliderView
		check_view(services)
		check_view(onGoing)
		check_view(history)
		check_view(account)
		check_view(inviteFriends)
		check_view(rate)
		check_view(report)
		check_view(settings)
		check_view(logout)
	end

	def checkAcoount(name,email,mobile,referralCode)
		checkValue(name_field,name)
		checkValue(email_field,email)
		checkValue(contact_field,mobile)
		checkValue(referralCode_field,referralCode)
	end

	def processToLogout
		touchScreen(10,10)
		tapButton('Logout')
		waitProgress
	end

	def processToAccount
		touchScreen(10,10)
		tapButton('Account')
		waitProgress
	end

end
