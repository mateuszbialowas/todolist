# frozen_string_literal: true

class ItemsController < AuthenticatedController
  before_action :set_item, only: %i[show edit update destroy]

  # GET /items or /items.json
  def index
    @items = current_user.items
  end

  # GET /items/1 or /items/1.json
  def show; end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit; end

  # POST /items or /items.json
  def create
    @item = current_user.items.new(item_params)

    if @item.save
      render 'items/create'
      # redirect_to items_path, notice: 'Item was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @item.update(item_params)
      flash.now[:notice] = 'Item was successfully updated now.'
      redirect_to items_path, notice: 'Item was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy!

    # redirect_to items_path, notice: 'Item was successfully destroyed.'
    flash.now[:notice] = 'Item was successfully destroyed now.'
    render 'items/destroy'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = current_user.items.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def item_params
    params.require(:item).permit(:name)
  end
end
