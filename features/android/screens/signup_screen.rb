require 'calabash-android/abase'

class SignupScreen < Calabash::ABase
	include GoBike::AndroidHelpers

  def trait
    "* marked:'SIGN UP'"
  end

  def login
    "* marked:'LOGIN'"
  end

	def yourEmail
		"* marked:'Email / Phone Number'"
	end

  def nextText
    "* marked:'NEXT'"
  end

  def orText
    "* marked:'OR'"
  end

  def facebook
    "* marked:'Log in with Facebook'"
  end

	def email_field
		"* id:'et_email_phone'"
	end

	def next_button
		"* id:'btn_next'"
	end

	def textEmailFormat
		"* marked:'Invalid Email or Phone Number Format!'"
	end

	def messageEmailBlank
		"* marked:'Please enter email/phone number'"
	end

  def checkSignupView
    check_view(trait)
    check_view(login)
	check_view(yourEmail)
    check_view(nextText)
    check_view(orText)
    check_view(facebook)
  end

	def showMessageEmailFormat
		check_view(textEmailFormat)
	end

	def showMessageEmailBlank
		check_view(messageEmailBlank)
	end

	def signupByEmail(email)
		clear_text(email_field)
		touch(yourEmail)
		enter_text(email_field, email)
		touch(next_button)
	end

	def touchNext
		touch(next_button)
	end

end
