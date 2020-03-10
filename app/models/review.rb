class Review < ApplicationRecord
  belongs_to :writer, class_name: "User"
  belongs_to :receiver, class_name: "User"
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
end
