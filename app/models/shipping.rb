class Shipping < ApplicationRecord
  has_many :product_orders
end
