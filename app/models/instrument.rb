class Instrument < ApplicationRecord
  has_many :bands
  has_many :users, through: :user_instruments
end
