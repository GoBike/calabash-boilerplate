require 'calabash-android/abase'

class RatingScreen < Calabash::ABase
	include GoBike::AndroidHelpers

  def total_field
    "* id:'tvw_total_fare'"
  end

  def name_field
    "* id:'tvw_biker_name'"
  end

  def number_field
    "* id:'tvw_biker_number_plate'"
  end

	def rating_field
		"* id:'rating_bar'"
	end

	def okFeedback
		"* marked:'OK'"
	end

  def checkTotal(total)
    getAmountThai(total_field,total)
  end

  def checkBikerName(nameValue)
    checkValue(name_field,nameValue)
  end

  def checkBikerNumber(numberValue)
    checkValue(number_field,numberValue)
  end

	def setRatingFromCustomer(rating)
		setRating(rating_field,rating)
	end

	def touchOK
		touch(okFeedback)
	end

end
