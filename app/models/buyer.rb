class Buyer < ApplicationRecord
  has_many :orders
  has_many :measurements
  has_secure_password

  
end
