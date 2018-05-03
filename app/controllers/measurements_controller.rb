class MeasurementsController < ApplicationController
  before_action :authenticate_buyer

  def index
    measurements = Measurement.all
    render json: measurements.as_json
  end

  def create
  end

  def show
    measurement = Measurement.find_by(id: params[:id])
    render json: measurement.as_json
  end

  def update
  end

  def destroy
  end

end
