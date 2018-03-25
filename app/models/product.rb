class Product < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true
  validates :volume, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
  validates :image_url, presence: true
end
