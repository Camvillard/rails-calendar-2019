class AddShippingReferenceToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :shipping, foreign_key: true
  end
end
