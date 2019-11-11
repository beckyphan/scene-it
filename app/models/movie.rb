class Movie < ApplicationRecord
  has_many :events
  has_many :ratings

  #<Movie id: nil, name: nil, year: nil, category: nil, image_url: nil, created_at: nil, updated_at: nil> 
end
