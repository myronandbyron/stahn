class MeasurementsController < ApplicationController
  before_action :authenticate_buyer

  def index
    p current_user
    measurements = Measurement.all
    render json: measurements.as_json
  end

  def create
    measurement = Measurement.new(
      neck: params[:neck], 
      full_chest: params[:full_chest], 
      full_shoulder: params[:full_shoulder], 
      right_sleeve: params[:right_sleeve], 
      left_sleeve: params[:left_sleeve], 
      right_full_sleeve: params[:right_full_sleeve], 
      left_full_sleeve: params[:left_full_sleeve], 
      bicep: params[:bicep], 
      wrist: params[:wrist], 
      waist_stomach: params[:waist_stomach], 
      hips_seat: params[:hips_seat], 
      front_jacket: params[:front_jacket], 
      front_chest: params[:front_chest], 
      back_width: params[:back_width], 
      half_shoulder_right: params[:half_shoulder_right], 
      half_shoulder_left: params[:half_shoulder_left], 
      full_back_length: params[:full_back_length], 
      half_back_length: params[:half_back_length], 
      trouser_waist: params[:trouser_waist], 
      trouser_outseam: params[:trouser_outseam], 
      trouser_inseam: params[:trouser_inseam], 
      crotch: params[:crotch], 
      thigh: params[:thigh], 
      knee: params[:knee],
      buyer_id: current_buyer.id
      )
    measurement.save!
    render json: measurement.as_json
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
