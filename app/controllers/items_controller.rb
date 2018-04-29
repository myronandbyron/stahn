class ItemsController < ApplicationController

  def index
    render json: {message: "hi1"}
  end
end
