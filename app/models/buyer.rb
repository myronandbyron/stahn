class Buyer < ApplicationRecord
  has_secure_password
  has_many :shopping_carts
  has_many :submitted_orders
  has_many :measurements

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  
end
