require 'calabash-android/abase'

class BookingScreen < Calabash::ABase
	include GoBike::AndroidHelpers

  def trait
    "* marked:'Check Fare'"
  end

	def tip_field
		"* id:'et_tip'"
	end

	def promo_field
		"* id:'et_promo_code'"
	end

	def noteToBiker
		"* marked:'Note To Biker/Landmark'"
	end

	def tip
		"* marked:'Tip (1-100 baht)'"
	end

	def promoCode
		"* marked:'Promo Code'"
	end

	def term
		"* marked:'TERMS AND CONDITION'"
	end

	def booking
		"* marked:'BOOK BIKER'"
	end

	def confirm
		"* marked:'CONFIRM'"
	end

	def messageTip
		"* marked:'Tip cannot more than 100 baht.'"
	end

	def messagePromo
		"* marked:'Invalid or expired promotion code.'"
	end

	def textOK
		"* marked:'OK'"
	end

	def enterBooking(note,tipAmount,promoValue)
		enter_text(noteToBiker,note)
		touch(tip)
		if tipAmount.to_f == 0
			clear_text(tip_field)
		else
			enter_text(tip_field,tipAmount)
		end

		touch(promoCode)
		enter_text(promo_field,promoValue)
	end

	def touchTip
		touch(tip_field)
	end

	def touchOK
		touch(textOK)
	end

	def touchBooking
		touch(booking)
	end

	def touchConfirm
		touch(confirm)
	end

	def checkViewFARE
		check_view(noteToBiker)
		check_view(tip)
		check_view(promoCode)
		check_view(term)
		check_view(booking)
	end

	def checkMessageTip
		check_view(messageTip)
	end

	def checkMessagePromo
		check_view(messagePromo)
	end

	def checkFare127Baht
		check_view(fare127Baht)
	end

end
