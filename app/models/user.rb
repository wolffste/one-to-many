class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bands
  belongs_to :genre, optional: true
  has_many :bookings, through: :bands
  has_many :favorites
  
  def bookmarked(musician)
    Favorite.find_or_create_by(user: self, musician: musician)
  end

  has_one_attached :photo

end
