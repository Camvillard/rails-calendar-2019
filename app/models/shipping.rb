class Shipping < ApplicationRecord
  has_many :orders

  monetize :price_cents
end
