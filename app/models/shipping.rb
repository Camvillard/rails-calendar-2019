class Shipping < ApplicationRecord
  has_many :product_orders

  monetize :price_cents
end
