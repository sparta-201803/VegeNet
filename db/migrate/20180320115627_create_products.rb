class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_id
      t.integer :category_id
      t.integer :price
      t.string :volume
      t.text :description
      t.integer :producer
      t.text :image_url

      t.timestamps
    end
  end
end
