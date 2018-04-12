class Transaction < ApplicationRecord
  belongs_to :user

  validates :product_id, presence: true
end
