class Band < ApplicationRecord
  belongs_to :user
  has_many :bookings
  belongs_to :genre
end
