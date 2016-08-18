module GoBike
  module AndroidHelpers
    def enter_text(uiquery, text)
      query(uiquery, {:setText => text})
    end

    def clear_text(uiquery)
      query(uiquery, {:setText=> "" })
    end

    def check_view(text)
      check_element_exists(text)
    end

    def scrollDown
      scroll_down
    end

    def waitProgress
      wait_for_element_does_not_exist("android.widget.ProgressBar")
    end

    def checkHistoryAtIndex(uiquery,test,index)
      a = query(uiquery,:text)
      if test != a[index.to_i - 1]
        raise test << ' not equal ' << a[index.to_i - 1]
      end
    end

    def checkValue(uiquery,test)
      a = query(uiquery,:text)
      if test != a[0]
        raise test << ' not equal ' << a[0]
      end
    end

    def getAmountThai(uiquery,test)
      a = query(uiquery,:text)

      if test.to_f == 0
        test = '-'
        if test != a[0]
          raise test << ' not equal ' << amount
        end
      else
        amountArray = a[0].gsub(/\s+/m,' ').strip.split(" ")
        amount = amountArray[0]
        if test != amount
          raise test << ' not equal ' << amount
        end
      end
    end

    def setRating(uiquery,rating)
      query(uiquery,setRating:rating)
    end

    def tapButton(identifier)
      tap_when_element_exists("* marked:'#{identifier}'")
    end

    def touchScreen(x,y)
      perform_action('click_on_screen',x,y)
    end

    def touchCoordinate(x,y)
      perform_action('touch_coordinate',x,y)
    end

    def waitTime(num_seconds)
      num_seconds = num_seconds.to_f
      sleep num_seconds
    end

    def collectValueCreditAndPayout
      creditQuery = query("* id:'credit_balance'",:text)
      payoutQuery = query("* id:'payout_balance'",:text)

      creditArray = creditQuery[0].gsub(/\s+/m,' ').strip.split(" ")
      payoutArray = payoutQuery[0].gsub(/\s+/m,' ').strip.split(" ")
      $credit = creditArray[0]
      $payout = payoutArray[0]

      puts 'Collect Credit:' << $credit
      puts 'Collect Payout:' << $payout
    end

    def checkValueCreditAndPayoutGoRide(discount)
      puts 'Check GoRide Credit:' << $credit
      puts 'Check GoRide Payout:' << $payout

      creditQuery = query("* id:'credit_balance'",:text)
      payoutQuery = query("* id:'payout_balance'",:text)

      creditArray = creditQuery[0].gsub(/\s+/m,' ').strip.split(" ")
      payoutArray = payoutQuery[0].gsub(/\s+/m,' ').strip.split(" ")

      puts 'Check GoRide Actual Credit:' << creditArray[0]
      puts 'Check GoRide Actual Payout:' << payoutArray[0]

      if $credit.to_f != creditArray[0].to_f
        raise $credit << ' not equal ' << creditArray[0]
      end

      if payoutArray[0].to_f != ($payout.to_f + discount.to_f)
        raise ($payout.to_f + discount.to_f) << ' not equal ' << payoutArray[0].to_f
      end
    end

  end
end

World(GoBike::AndroidHelpers)
