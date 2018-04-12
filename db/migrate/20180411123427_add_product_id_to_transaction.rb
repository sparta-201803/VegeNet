class AddProductIdToTransaction < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :product_id, :integer
  end
end
