class ShoppingCartsController < ApplicationController

  def index
    shopping_carts = ShoppingCart.all
    render json: shopping_carts.as_json
  end

  def create
    shopping_cart = ShoppingCart.new(
      status: params[:status],
      buyer_id: params[:buyer_id],
      fabric_id: params[:fabric_id],
      measurement_id: params[:measurement_id],
      item_id: params[:item_id]
      )
    shopping_cart.save
  end

  def show
    shopping_cart = ShoppingCart.find_by(id: params[:id])
    render json: shopping_cart.as_json
  end

  def update
    shopping_cart = ShoppingCart.find_by(params[:id])

    shopping_cart.status = params[:status] || shopping_cart.status
    shopping_cart.fabric_id = params[:fabric_id] || shopping_cart.fabric_id
    shopping_cart.measurement_id = params[:measurement_id] || shopping_cart.measurement_id
    shopping_cart.item_id = params[:item_id] || shopping_cart.item_id
    if shopping_cart.save
      render json: shopping_cart.as_json
    else
      render json: {errors: shopping_cart.errors.full_message}
    end  
  end

  def destroy
    shopping_cart = ShoppingCart.find_by(params[:id])

    shopping_cart.destroy
    render json: {message: "Deleted unsubmitted orders"}
  end

end
