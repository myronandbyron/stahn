class Item < ApplicationRecord
  has_many :orders

  def as_json
    {
      id: id,
      item_type: item_type,
      price_per_item: price_per_item,
      image: image
    }
  end
end
