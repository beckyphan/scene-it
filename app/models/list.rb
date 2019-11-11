class List < ApplicationRecord
  belongs_to :user
  has_many :movies
  scope :seen, { where (watched: true)}
  scope :to_see, {where (watched: false)}
end
