class List < ApplicationRecord
  belongs_to :user
  has_many :movies
  scope :seen, -> { where(watched: true)}
  scope :to_see, -> {where(watched: false)}

  #<List id: nil, user_id: nil, movie_id: nil, watched: nil, created_at: nil, updated_at: nil> 
end
