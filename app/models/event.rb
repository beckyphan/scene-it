class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :attendees, class_name: "User"
  has_one :movie

  #<Event id: nil, title: nil, date: nil, time: nil, location: nil, host_id: nil, movie_id: nil, created_at: nil, updated_at: nil>
end
