class Favorite < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :musician, class_name: "User"
  validates_uniqueness_of :musician_id, scope: :user_id


end
