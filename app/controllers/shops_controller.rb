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
      redirect_to root_path
    else
      render new
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name, schedules_attributes: %i[id opens_at closes_at weekday _destroy])
  end
end