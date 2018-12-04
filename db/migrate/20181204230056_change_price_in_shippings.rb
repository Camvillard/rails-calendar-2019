class ChangePriceInShippings < ActiveRecord::Migration[5.2]
  def change
    remove_column :shippings, :price
    add_monetize :shippings, :price, currency: { present: false }
  end
end
