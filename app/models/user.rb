class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # belongs_to :area
  mount_uploader :img_url, AvatarUploader
  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable
          :validatable
end
