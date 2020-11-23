class Band < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  belongs_to :instrument
  has_many :bookings
  has_many_attached :photos
end
