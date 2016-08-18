require 'calabash-android/abase'

class PassengerScreen < Calabash::ABase
	include GoBike::AndroidHelpers

  def trait
    "* marked:'Check Fare'"
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

	def yourEmail
		"* marked:'Enter Your Email'"
	end

	def yourPassword
		"* marked:'Enter Your Password'"
	end

  def goRide_button
    "* marked:'Go Ride'"
  end

  def pickUp
	"* marked:'Pick Up'"
  end

  def dropOff
    "* marked:'Drop Off'"
  end

	def checkFare
		"* id:'btn_check_fare'"
	end

	def textSearch
		"* marked:'Search'"
	end

	def search_field
		"* id:'searchInput'"
	end

	def useThisLocation
		"* marked:'USE THIS LOCATION'"
	end

  def messageDistanceFar
    "* marked:'Distance is too far for biker.'"
  end

	def processToPassenger(email,password)
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
    touch(goRide_button)
	end

	def searchInput(location)
		clear_text(search_field)
		touch(textSearch)
		enter_text(search_field,location)
	end

	def touchCheckFare
		touch(checkFare)
	end

  def touchDropOff
    touch(dropOff)
  end

	def touchPickUp
		touch(pickUp)
	end

  def messageChooseLocation
    "* marked:'Please choose pick up and drop off point.'"
  end

  def messageTheSamePoint
    "* marked:'Pick up point and drop off point cannot be same.'"
  end

	def touchUseThisLocation
		touch(useThisLocation)
	end

	def selectedLocation(inSearch,chooseLocation)
		waitTime(5)
		searchInput(inSearch)
		waitTime(3)
		touch("* marked:'#{chooseLocation}'")
		touch(useThisLocation)
		waitTime(5)
	end

	def checkViewFARE
		check_view(noteToBiker)
		check_view(tip)
		check_view(promoCode)
		check_view(term)
		check_view(booking)
	end

  def checkChooseLocation
    check_view(messageChooseLocation)
  end

  def checkTheSamePoint
    check_view(messageTheSamePoint)
  end

	def checkMessageDistanceFar
		check_view(messageDistanceFar)
	end

end
