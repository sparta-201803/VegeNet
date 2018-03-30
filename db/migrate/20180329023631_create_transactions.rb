class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :user_id,        null: false
      t.integer :seller_id,      null: false
      t.string  :product_name,   null: false
      t.integer :product_price,  null: false
      t.integer :product_volume, null: false
      t.string  :product_user,   null: false

      t.timestamps
    end
  end
end
