class Band < ApplicationRecord
  belongs_to :user
  has_many :bookings
  belongs_to :genre
  has_one_attached :photo
end
