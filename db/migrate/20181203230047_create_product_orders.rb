class CreateProductOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :product_orders do |t|
      t.references :products, foreign_key: true
      t.references :shippings, foreign_key: true
      t.timestamps
    end
  end
end
