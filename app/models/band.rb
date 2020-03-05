class Band < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  belongs_to :instrument
  has_many :bookings
  has_one_attached :photo
end
