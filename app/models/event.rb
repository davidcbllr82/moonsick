class Event < ApplicationRecord
  belongs_to :user

  has_many :attendees
  has_many :moments

  validates :title, presence: true
  validates :description, presence: true
end
