require 'calabash-android/abase'

class LoginScreen < Calabash::ABase
	include GoBike::AndroidHelpers

	def login_button
		trait
	end

	def touchPassword
		textPassword
	end

	def email_field
		"edittext id:'et_email'"
	end

	def password_field
		"edittext id:'et_password'"
	end

	def trait
		"* marked:'LOGIN'"
	end

	def textEmail
		"* marked:'Email'"
	end

	def textPassword
		"* marked:'Password'"
	end

	def textForgetPassword
		"* marked:'Forget Password'"
	end

	def textRegistered
		"* marked:'If you have not registered with us, please contact us by pressing'"
	end

	def textCallUS
		"* marked:'CALL US'"
	end

	def textOR
		"* marked:'OR'"
	end

	def textSUMMIT
		"* marked:'SUBMIT INFO'"
	end

	def textThankYou
		"* marked:'to use our services. Thank you.'"
	end

	def textConsumer
		"* marked:'Consumer? Download Now'"
	end

	def textEmailBlank
		"* marked:'Email cannot be blank'"
	end

	def textEmailFormat
		"* marked:'Invalid Email Format'"
	end

	def textPasswordBlank
		"* marked:'Password cannot be blank'"
	end

	def viewText
		"* marked:'VIEW'"
	end

	def dismissText
		"* marked:'DISMISS'"
	end

	def login(email, password)
		clear_text(email_field)
		enter_text(email_field, email)
		clear_text(password_field)
		enter_text(password_field, password)
		touch(login_button)
	end

	def loginView(app)
		if app = 'Biker'
			check_view(textEmail)
			check_view(textPassword)
			check_view(trait)
			check_view(textForgetPassword)
			check_view(textRegistered)
			check_view(textCallUS)
			check_view(textOR)
			check_view(textSUMMIT)
			check_view(textThankYou)
			check_view(textConsumer)
		else
			check_view(textEmail)
			check_view(textPassword)
			check_view(trait)
			check_view(textForgetPassword)
		end
	end

	def tapLogin
		touch(trait)
	end

	def touchLogin
		touch(login_button)
	end

	def touchView
		touch(viewText)
	end

	def touchDismiss
		touch(dismissText)
	end

	def showMessageEmailBlank
		check_view(textEmailBlank)
	end

	def showMessageEmailFormat
		check_view(textEmailFormat)
	end

	def showMessagePasswordBlank
		check_view(textPasswordBlank)
	end

	def passwordBlank(email)
		clear_text(email_field)
		enter_text(email_field, email)
		clear_text(password_field)
		touch(touchPassword)
		touch(login_button)
	end

end
