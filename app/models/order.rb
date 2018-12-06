class Order < ApplicationRecord
  belongs_to :shipping
  belongs_to :product

  monetize :amount_cents

  validates :user_email, presence: true
end
