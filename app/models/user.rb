class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :moments
  has_many :events
  has_many :attendees

  mount_uploader :profile_banner, PhotoUploader
  mount_uploader :profile_avatar, PhotoUploader
end
