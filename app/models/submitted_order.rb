class SubmittedOrder < ApplicationRecord
  belongs_to :buyer
  has_many :shopping_carts
  has_many :items, :measurements, :fabrics, through: :shopping_carts

  validates :item_id, :fabric_id, :measurement_id, presence: true

  def as_json
    {
      id: id,
      buyer_id: buyer_id,
      subtotal: subtotal,
      tax: tax,
      total: total,
      item_id: item_id,
      fabric_id: fabric_id,
      measurement_id: measurement_id
    }
  end
end
