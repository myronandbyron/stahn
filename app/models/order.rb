class Order < ApplicationRecord
  belongs_to :item
  belongs_to :measurement
  belongs_to :fabric
  belongs_to :buyer
  belongs_to :submitted_order

  def as_json
    {
      status: status,
      item_id: item_id,
      measurement_id: measurement_id,
      fabric_id: fabric_id,
      buyer_id: buyer_id,
      submitted_order: submitted_order
    }
  end
end
