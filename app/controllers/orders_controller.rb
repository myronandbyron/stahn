class OrdersController < ApplicationController
  before_action :authenticate_buyer

  def index
    orders = Order.all
    render json: orders.as_json
  end

  def create
    order = Order.new(
      status: params[:status],
      buyer_id: params[:buyer_id],
      fabric_id: params[:fabric_id],
      measurement_id: params[:measurement_id],
      item_id: params[:item_id]
      )
    order.save
  end

  def show
  end

  def update
  end

  def destroy
  end

end
