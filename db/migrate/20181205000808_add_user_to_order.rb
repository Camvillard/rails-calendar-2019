class AddUserToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :user_email, :string
  end
end
