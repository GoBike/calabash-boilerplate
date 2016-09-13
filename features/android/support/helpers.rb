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

    def checkValue(uiquery,test)
      a = query(uiquery,:text)
      if test != a[0]
        raise test << ' not equal ' << a[0]
      end
    end

    def setRating(uiquery,rating)
      query(uiquery,setRating:rating.to_f)
    end

    def tapButton(identifier)
      tap_when_element_exists("* marked:'#{identifier}'")
    end

    def touchScreen(x,y)
      perform_action('click_on_screen',x,y)
    end

    def waitTime(num_seconds)
      num_seconds = num_seconds.to_f
      sleep num_seconds
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

    def doubleBooking(round)
      for counter in 0..round.to_i
        wait_for_text('FIND AGAIN', timeout: 250)
        tap_when_element_exists("* marked:'#{FIND AGAIN}'")
      end
    end

  end
end

World(GoBike::AndroidHelpers)
