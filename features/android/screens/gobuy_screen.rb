require 'calabash-android/abase'

class GoBuyScreen < Calabash::ABase
	include GoBike::AndroidHelpers

	 def trait
    	"* marked:'What to buy ?'"
  	end

    def description_field
      "* id:'order_description'"
    end

    def myLocation_field
      "* id:'tvw_dropoff_address'"
    end

  	def goBuy
  		"* marked:'Go Buy'"
  	end

  	def confirm
  		"* marked:'CONFIRM'"
  	end

    def nearby
      "* marked:'Nearby'"
    end

    def myLocation
      "* marked:'My Location'"
    end

  	def messageDescription
  		"* marked:'Please describe what item you would like to buy.'"		
  	end

    def messageTooFar
      "* marked:'Distance is too far for biker.'"
    end

    def walkStep1
      "* marked:'Start by adding items that you want to buy.'"
    end

    def walkStep2
      "* marked:'Tell us where to buy and send your items.'"
    end

    def walkStep3
      "* marked:'Check the fare and book a biker next.'"
    end

    def gotIt
      "* marked:'GOT IT'"
    end

    def enterOrder(orderDescription)
      clear_text(description_field)
      enter_text(description_field, orderDescription)
    end

    def walkthroughStep
#      check_view(walkStep1)
      touch(gotIt)
#      check_view(walkStep2)
      touch(gotIt)
#      check_view(walkStep3)
      sleep 5
      touch(gotIt)
    end

  	def touchConfirm
  		touch(confirm)
  	end

    def touchNearby
      touch(nearby)
    end

    def touchMyLocation
      touch(myLocation)
    end

  	def checkMessageDescription
  		check_view(messageDescription)
  	end

    def checkMessageTooFar
      check_view(messageTooFar)
    end

end