class BuyersController < ApplicationController

  def index
    buyers = Buyer.all
    render json: buyers.as_json
  end

  def create
    buyer = Buyer.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if buyer.save
      render json: {message: 'Buyer created successfully'}, status: :created
    else
      render json: {errors: buyer.errors.full_messages}, status: :bad_request
    end
end

  end

  def show
  end

  def update
  end

  def destroy
  end

end
