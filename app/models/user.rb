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
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  validates :encrypted_password, presence: true

end
