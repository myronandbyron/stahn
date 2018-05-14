class ShoppingCartsController < ApplicationController
  before_action :authenticate_buyer

  def index
    shopping_carts = current_buyer.shopping_carts.where(status: "carted")
    render json: shopping_carts.as_json
  end

  def create
    shopping_cart = ShoppingCart.new(
      status: "carted",
      buyer_id: current_buyer,
      fabric_id: params[:fabric_id],
      measurement_id: params[:measurement_id],
      item_id: params[:item_id]
      )
      if shopping_cart.save
        render json: shopping_cart.as_json
      else
        render json: {errors: shopping_cart.errors.full_message}
      end
  end

  def show
    shopping_cart = ShoppingCart.find_by(id: params[:id])
    render json: shopping_cart.as_json
  end

  def update
    shopping_cart = current_buyer.shopping_cart.where(status: "carted")
    shopping_cart.measurement_id = params[:measurement_id] || shopping_cart.measurement_id
    shopping_cart.item_id = params[:item_id] || shopping_cart.item_id
    if shopping_cart.save
      render json: shopping_cart.as_json
    else
      render json: {errors: shopping_cart.errors.full_message}
    end  
  end

  def destroy
    shopping_cart = current_buyer.shopping_cart.where(status: "carted")
    shopping_cart.update(status: "removed")
    render json: {message: "Deleted unsubmitted orders"}
  end

end
