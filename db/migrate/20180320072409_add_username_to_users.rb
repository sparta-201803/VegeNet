class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name,     :string
    add_column :users, :area_id,  :integer
    add_column :users, :appeal,   :text
    add_column :users, :img_url,  :string
    add_column :users, :seller,   :boolean
  end
end
