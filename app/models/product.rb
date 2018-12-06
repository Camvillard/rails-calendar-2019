class Product < ApplicationRecord
  has_many :orders
  has_many :product_images

  monetize :price_cents
end
