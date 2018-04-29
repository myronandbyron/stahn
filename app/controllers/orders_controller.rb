class OrdersController < ApplicationController

  def index
    orders = Order.all
    render json: orders.as_json
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

end
