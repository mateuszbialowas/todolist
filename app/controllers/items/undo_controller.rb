# frozen_string_literal: true

module Items
  class UndoController < AuthenticatedController
    before_action :set_item, only: %i[create]

    def create
      @item.undiscard!

      redirect_to items_path
    end

    private

    def set_item
      @item = current_user.items.find(params[:item_id])
    end
  end
end
