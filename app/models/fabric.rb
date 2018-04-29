class Fabric < ApplicationRecord

  def as_json
    {
      name: name,
      fabric_type: fabric_type,
      price_per_yard: price_per_yard,
      image: image,
      available: available
    }
  end
end
