class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :volume
      t.text :description
      t.integer :user_id
      t.text :image_url

      t.timestamps
    end
  end
end
