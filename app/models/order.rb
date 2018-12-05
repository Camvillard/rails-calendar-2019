class Order < ApplicationRecord
  monetize :amount_cents

  validates :user_email, presence: true
end
