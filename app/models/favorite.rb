class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :musician
  validates_uniqueness_of :musician_id, scope: :user_id
end
