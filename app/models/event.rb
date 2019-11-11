class Event < ApplicationRecord
  belongs_to :host, class_name: :user, foreign_key: :user_id
  has_many :attendees, class_name: :user, foreign_key: :user_id
  belongs_to :movie
end
