class FabricsController < ApplicationController

  def index
    fabrics = Fabric.all
    render json: fabrics.as_json
  end

  def create
  end

  def show
    fabric = Fabric.find_by(id: params[:id])
    render json: fabric.as_json
  end

  def update
  end

  def destroy
  end

end
