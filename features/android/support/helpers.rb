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
  end
end

World(GoBike::AndroidHelpers)
