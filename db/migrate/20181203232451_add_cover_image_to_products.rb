class AddCoverImageToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :cover_image, :string, null: false, default: ""
  end
end
