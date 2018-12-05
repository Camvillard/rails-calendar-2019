class AddShippingInfoToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :first_name, :string
    add_column :orders, :last_name, :string
    add_column :orders, :address, :string
    add_column :orders, :zipcode, :string
    add_column :orders, :city, :string
    add_column :orders, :country, :string
  end
end
