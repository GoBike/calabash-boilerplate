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

    def checkHistoryAtIndex(uiquery,test,index)
      a = query(uiquery,:text)
      if test != a[index.to_i - 1]
        raise test << ' not equl ' << a[index.to_i - 1]
      end
    end
  end
end

World(GoBike::AndroidHelpers)
