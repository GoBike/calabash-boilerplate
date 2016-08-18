require 'calabash-android/abase'

class LoginScreen < Calabash::ABase
	include GoBike::AndroidHelpers

	def login_button
		loginID
	end

	def email_field
		"* id:'et_email'"
	end

	def password_field
		"* id:'et_password'"
	end

	def trait
		"* marked:'LOGIN'"
	end

	def yourEmail
		"* marked:'Enter Your Email'"
	end

	def yourPassword
		"* marked:'Enter Your Password'"
	end

	def forgetPassword
		"* marked:'Forget Password'"
	end

	def loginID
		"* id:'btn_login'"
	end

	def textEmailFormat
		"* marked:'Incorrect email format.'"
	end

	def textEmailBlank
		"* marked:'Please key in your email.'"
	end

	def textPasswordBlank
		"* marked:'Please key in your password.'"
	end

	def textAccountNotExist
		"* marked:'Account does not exist.'"
	end

	def textPasswordIncorrect
		"* marked:'Incorrect current password.'"
	end

	def login(email, password)
		clear_text(email_field)
		touch(yourEmail)
		enter_text(email_field, email)
		clear_text(password_field)
		touch(yourPassword)
		enter_text(password_field, password)
	end

	def loginByEmail(email)
		clear_text(email_field)
		touch(yourEmail)
		enter_text(email_field, email)
	end

	def loginView
		check_view(trait)
		check_view(yourEmail)
		check_view(yourPassword)
		check_view(forgetPassword)
	end

	def showMessageEmailFormat
		check_view(textEmailFormat)
	end

	def showMessageEmailBlank
		check_view(textEmailBlank)
	end

	def showMessagePassswordBlank
		check_view(textPasswordBlank)
	end

	def showMessageAccountNotExist
		check_view(textAccountNotExist)
	end

	def showMessagePasswordIncorrent
		check_view(textPasswordIncorrect)
	end

	def tapLogin
		touch(trait)
	end

	def touchEmail
		touch(yourEmail)
	end

	def touchPassword
		touch(yourPassword)
	end

	def touchLoginButton
		touch(login_button)
	end

	def processToHome(email,password)
			tapLogin
			clear_text(email_field)
			touch(yourEmail)
			enter_text(email_field, email)
			clear_text(password_field)
			touch(yourPassword)
			enter_text(password_field, password)
			scrollDown
			touchLoginButton
	end

end
