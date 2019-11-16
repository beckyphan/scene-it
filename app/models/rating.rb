class Rating < ApplicationRecord
  belongs_to :user
  has_one :movie

  #<Rating id: nil, user_id: nil, movie_id: nil, recommend: nil, created_at: nil, updated_at: nil>
end
