class ItemsController < ApplicationController

  def index
    items = Item.all
    render json: items.as_json
  end

  def create
  end

  def show
    item = Item.find_by(id: params[:id])
    render json: item.as_json
  end

  def update
  end

  def destroy
  end

end
