class MovieList < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  scope :seen, { where (watched: true)}
  scope :to_see, {where (watched: false)}
end
