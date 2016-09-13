require 'calabash-android/abase'

class FindingBikerScreen < Calabash::ABase
	include GoBike::AndroidHelpers

  def findingBiker
    "* marked:'Finding biker'"
  end

  def checkFindingBiker
    check_view(findingBiker)
  end

  def doubleBook(round)
  	doubleBooking(round)
  end

end
