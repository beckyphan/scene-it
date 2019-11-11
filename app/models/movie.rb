class Movie < ApplicationRecord
  has_many :events
  has_many :ratings
end
