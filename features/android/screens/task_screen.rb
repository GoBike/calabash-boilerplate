require 'calabash-android/abase'

class TaskScreen< Calabash::ABase
	include GoBike::AndroidHelpers

	def trait
		"* marked:'New Tasks'"
	end

	def goRide
		"* marked:'Go Ride'"
	end

	def pickUp
		"* marked:'Pick Up'"
	end

	def loginButton
		"* marked:'LOGIN'"
	end

	def email_field
		"edittext id:'et_email'"
	end

	def password_field
		"edittext id:'et_password'"
	end

	def processToHome(email,password)
		clear_text(email_field)
		enter_text(email_field, email)
		clear_text(password_field)
		enter_text(password_field, password)
		touch(loginButton)
	end

end
