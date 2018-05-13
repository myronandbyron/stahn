class Fabric < ApplicationRecord
  has_many :shopping_carts

  def as_json
    {
      id: id,
      name: name,
      fabric_type: fabric_type,
      price_per_yard: price_per_yard,
      image: image,
      available: available
    }
  end
end
