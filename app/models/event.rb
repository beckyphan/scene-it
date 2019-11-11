class Event < ApplicationRecord
  belongs_to :host, class_name: :user, foreign_key: :user_id
  has_many :attendees, class_name: :user, foreign_key: :user_id
  belongs_to :movie

  #<Event id: nil, title: nil, date: nil, time: nil, location: nil, host_id: nil, movie_id: nil, created_at: nil, updated_at: nil> 
end
