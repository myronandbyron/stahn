class Order < ApplicationRecord
  belongs_to :item
  belongs_to :measurement
  belongs_to :fabric
  belongs_to :buyer

  def as_json
    {
      subtotal: subtotal,
      tax: tax,
      price: price,
      status: status
    }
  end
end
