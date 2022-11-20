class ShopsController < ApplicationController


  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to(root_path)
    else
      render new, shop: @shop
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name, schedules_attributes: %i[id opens_at_morning closes_at_morning opens_at_afternoon closes_at_afternoon weekday is_closed _destroy])
  end
end
