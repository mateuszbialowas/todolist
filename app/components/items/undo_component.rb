# frozen_string_literal: true

module Items
  class UndoComponent < ViewComponent::Base
    def initialize(item:)
      @item = item
    end
  end
end
