class User < ApplicationRecord
  belongs_to :area, optional: true
  has_many :products

  mount_uploader :img_url, AvatarUploader

  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable
          :validatable

  validates :name, presence: true
  validates :email, presence: true
end
