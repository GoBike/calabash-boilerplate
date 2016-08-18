require 'calabash-android/abase'

class RatingScreen< Calabash::ABase
	include GoBike::AndroidHelpers

  def fare_field
    "* id:'fare'"
  end

	def discount_field
		"* id:'msgDisclaimer'"
	end

  def rating_field
    "* id:'ratingBar'"
  end

  def checkFare(fare)
    checkValue(fare_field,fare)
  end

	def checkDiscountTransfer(discount)
		checkValue(discount_field,discount)
	end

  def setRatingFromBiker(rating)
    setRating(rating_field,rating.to_f)
  end

end
