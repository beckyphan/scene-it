class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :attendees, class_name: "User"
  has_one :movie

  validates :timedate, uniqueness: { scope: :host_id, message: "You are already hosting an existing event at this time."}

  #<Event id: nil, title: nil, date: nil, time: nil, location: nil, host_id: nil, movie_id: nil, created_at: nil, updated_at: nil>
end
