require 'calabash-android/abase'

class MessengerScreen < Calabash::ABase
	include GoBike::AndroidHelpers

	def trait
		"* marked:'Go Messenger'"
	end

  def loginTab
		"* marked:'LOGIN'"
	end

	def email_field
		"* id:'et_email'"
	end

	def password_field
		"* id:'et_password'"
	end

  def loginID
		"* id:'btn_login'"
	end

	def senderName_field
		"* id:'et_sender_name'"
	end

	def senderPhone_field
		"* id:'et_sender_contact'"
	end

	def recipientName_field
		"* id:'et_recipient_name'"
	end

	def recipientPhone_field
		"* id:'et_recipient_contact'"
	end

	def yourEmail
		"* marked:'Enter Your Email'"
	end

	def yourPassword
		"* marked:'Enter Your Password'"
	end

  def goMessenger_button
    "* marked:'Go Messenger'"
  end

  def oneWayTap
    "* marked:'One Way'"
  end

  def roundTrip
    "* marked:'Round Trip'"
  end

  def selectPickUp
    "* marked:'Tap to select pick up address'"
  end

  def selectDropOff
    "* marked:'Tap to select drop off address'"
  end

	def next_button
		"* marked:'NEXT'"
	end

	def invalidRequestMessage
		"* marked:'Invalid request.'"
	end

	def mandatoryMessage
		"* marked:'This field is mandatory'"
	end

	def incorrectPhoneMessage
		"* marked:'Incorrect phone format.'"
	end

	def theSamePlanceMessage
		"* marked:'Pick up point and drop off point cannot be same.'"
	end

  def processToMessenger(email,password)
    touch(loginTab)
    clear_text(email_field)
    touch(yourEmail)
    enter_text(email_field, email)
    clear_text(password_field)
    touch(yourPassword)
    enter_text(password_field, password)
    scrollDown
    touch(loginID)
    waitProgress
    touch(goMessenger_button)
  end

  def enterSender(name,phone)
		clear_text(senderName_field)
		enter_text(senderName_field,name)
		clear_text(senderPhone_field)
		enter_text(senderPhone_field,phone)
		touch(recipientName_field)
		touch(senderName_field)
  end

	def enterSenderName(name)
		clear_text(senderName_field)
		enter_text(senderName_field,name)
	end

	def enterRecipient(name,phone)
		clear_text(recipientName_field)
		enter_text(recipientName_field,name)
		clear_text(recipientPhone_field)
		enter_text(recipientPhone_field,phone)
		touch(recipientName_field)
	end

  def tapOneWay
    touch(tapOneWay)
  end

  def tapRoundTrip
    touch(roundTrip)
  end

	def touchPickUp
		touch(selectPickUp)
	end

	def touchDropOff
		touch(selectDropOff)
	end

	def touchNext
		touch(next_button)
	end

	def touchSenderName
		touch(senderName_field)
	end

	def touchSenderPhone
		touch(senderPhone_field)
	end

	def touchRecipientName
		touch(recipientName_field)
	end

	def touchRecipientPhone
		touch(recipientPhone_field)
	end

	def checkInvaileMessage
		check_view(invalidRequestMessage)
	end

	def checkMandatoryMessage
		check_view(mandatoryMessage)
	end

	def checkIncorrectPhoneMessage
		check_view(incorrectPhoneMessage)
	end

	def checkTheSamePlaceMessage
		check_view(theSamePlanceMessage)
	end

end
