class Movie < ApplicationRecord
  has_many :events
  has_many :ratings
  has_many :users, through: :movie_list
  validates :name, presence: true, uniqueness: { scope: :year, message: " - Movie of same title in this year already exists."}
  validates :year, presence: true
  validates :category, presence: true
  validates :image_url, presence: true

  #<Movie id: nil, name: nil, year: nil, category: nil, image_url: nil, created_at: nil, updated_at: nil>
end
