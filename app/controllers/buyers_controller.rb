class BuyersController < ApplicationController

  def index
    buyers = Buyer.all
    render json: buyers.as_json
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
