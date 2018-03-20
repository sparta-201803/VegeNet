class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :area, :string
    add_column :users, :appeal, :text
    add_column :users, :seller, :boolean
  end
end
