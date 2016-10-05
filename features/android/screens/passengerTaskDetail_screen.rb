require 'calabash-android/abase'

class PassengerTaskDetailScreen < Calabash::ABase
	include GoBike::AndroidHelpers

  def yourBiker
    "* marked:'Your Biker'"
  end

  def callText
    "* marked:'CALL'"
  end

  def cancel
    "* marked:'Cancel Booking'"
  end

  def bikerName
    "* id:'tvw_biker_name'"
  end

  def bikerNumber
    "* id:'tvw_biker_number_plate'"
  end

  def estimationTime
    "* id:'tvw_estimation_time'"
  end

  def checkViewPassengerTaskDetail
    check_view(yourBiker)
    check_view(callText)
    check_view(cancel)
  end

  def checkBikerName(name)
    checkValue(bikerName,name)
  end

  def checkBikerNumber(bikerNumberValue)
    checkValue(bikerNumber,bikerNumberValue)
  end

  def checkArriving(timeValue)
    time = 'Arriving in ' << timeValue << ' min'
    checkValue(estimationTime,time)
  end

  def checkStatus(statusValue)
    checkValue(estimationTime,statusValue)
  end

end
