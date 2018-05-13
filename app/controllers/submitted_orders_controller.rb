class SubmittedOrdersController < ApplicationController
  before_action :authenticate_buyer
  
  def index
    submitted_orders = SubmittedOrder.all
    render json: submitted_orders.as_json
  end

  def create
    submitted_order = SubmittedOrder.new(
      buyer_id: params[:buyer_id],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
      )
    submitted_order.save
  end
end
