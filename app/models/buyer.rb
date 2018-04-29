class Buyer < ApplicationRecord
  has_many :orders
  has_many :measurements
end
