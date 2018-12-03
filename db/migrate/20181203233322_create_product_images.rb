class CreateProductImages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_images do |t|
      t.string :image_url
      t.references :products

      t.timestamps
    end
  end
end
