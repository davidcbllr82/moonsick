class Event < ApplicationRecord
  belongs_to :user

  has_many :attendees
  has_many :moments

  validates :title, presence: true
  validates :description, presence: true

  mount_uploader :banner, PhotoUploader
  mount_uploader :event_avatar, PhotoUploader

  def spotify_playlist_id
    spotify_uri[/[^:]*$/]
  end
end
