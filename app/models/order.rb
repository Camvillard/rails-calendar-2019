class Order < ApplicationRecord
  belongs_to :shipping
  monetize :amount_cents

  validates :user_email, presence: true
end
