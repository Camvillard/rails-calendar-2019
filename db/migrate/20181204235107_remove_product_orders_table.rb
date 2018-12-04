class RemoveProductOrdersTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :product_orders
  end
end
