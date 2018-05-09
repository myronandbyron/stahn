class Measurement < ApplicationRecord
  has_many :orders
  belongs_to :buyer

  validates :neck, :full_chest, :full_shoulder, :right_sleeve, :left_sleeve, :right_full_sleeve, :left_full_sleeve, :bicep, :wrist, :waist_stomach, :hips_seat, :front_jacket, :front_chest, :back_width, :half_shoulder_right, :half_shoulder_left, :full_back_length, :half_back_length, :trouser_waist, :trouser_outseam, :trouser_inseam, :crotch, :thigh, :knee, presence: true

  def as_json
    {
      neck: neck,
      full_chest: full_chest,
      full_shoulder: full_shoulder,
      right_sleeve: right_sleeve,
      left_sleeve: left_sleeve,
      right_full_sleeve: right_full_sleeve,
      left_full_sleeve: left_full_sleeve,
      bicep: bicep,
      wrist: wrist,
      waist_stomach: waist_stomach,
      hips_seat: hips_seat,
      front_jacket: front_jacket,
      front_chest: front_chest,
      back_width: back_width,
      half_shoulder_right: half_shoulder_right,
      half_shoulder_left: half_shoulder_left,
      full_back_length: full_back_length,
      half_back_length: half_back_length,
      trouser_waist: trouser_waist,
      trouser_outseam: trouser_outseam,
      trouser_inseam: trouser_inseam,
      crotch: crotch,
      thigh: thigh,
      knee: knee,
      created_at: created_at,
      buyer_id: buyer_id
    }
  end
end
