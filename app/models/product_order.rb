class ProductOrder < ApplicationRecord
  belongs_to :product
  belongs_to :shipping
end
