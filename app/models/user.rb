class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bands
  belongs_to :genre, optional: true
  belongs_to :instrument, optional: true
  has_many :bookings, through: :bands
  has_many :favorites
  has_many_attached :photos

end
