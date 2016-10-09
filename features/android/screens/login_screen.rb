require 'calabash-android/abase'

class LoginScreen < Calabash::ABase
	include GoBike::AndroidHelpers

	def login_button
		trait
	end

	def touchTextPassword
		touch(textPassword)
	end

	def email_field
		"* id:'et_email'"
	end

	def password_field
		"* id:'et_password'"
	end

	def button_field
		"* id:'btn_login'"
	end

	def trait
		"* marked:'LOGIN'"
	end

	def tapTextLogin
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

	def textEmailIncorrect
		"* marked:'Incorrect email format.'"
	end

	def textPasswordBlank
		"* marked:'Password cannot be blank'"
	end

	def keyPasswordBlank
		"* marked:'Please key in your password.'"
	end

	def viewText
		"* marked:'VIEW'"
	end

	def dismissText
		"* marked:'DISMISS'"
	end

	def yourEmail
		"* marked:'Enter Your Email'"
	end

	def yourPassword
		"* marked:'Enter Your Password'"
	end

	def login(email, password)
		clear_text(email_field)
		enter_text(email_field, email)
		clear_text(password_field)
		enter_text(password_field, password)
		touch(login_button)
	end

	def loginByEmail(email)
		clear_text(email_field)
		touch(yourEmail)
		enter_text(email_field, email)
	end

	def loginView(app)
		if app == 'Biker'
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
			check_view(yourEmail)
			check_view(yourPassword)
			check_view(trait)
			check_view(textForgetPassword)
		end
	end

	def tapLogin
		touch(trait)
	end

	def touchLogin
		touch(button_field)
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

	def showMessageEmailFormat(app)
		if app == 'Biker'
			check_view(textEmailFormat)
		else
			check_view(textEmailIncorrect)
		end
		
	end

	def showMessagePasswordBlank(app)
		if app == 'Biker'
			check_view(textPasswordBlank)
		else
			check_view(keyPasswordBlank)
		end
	end

	def passwordBlank(email)
		clear_text(email_field)
		enter_text(email_field, email)
		clear_text(password_field)
		touch(touchPassword)
		touch(login_button)
	end

	def touchPassword
		touch(yourPassword)
	end

	def processToHome(email,password,app)
		if app == 'Biker'
		else
			tapLogin
			clear_text(email_field)
			touch(yourEmail)
			enter_text(email_field, email)
			clear_text(password_field)
			touch(yourPassword)
			enter_text(password_field, password)
			scrollDown
			touchLogin
		end
	end

end
