class User < ApplicationRecord
  validates :username, uniqueness: true
  has_secure_password

  has_many :comments
  has_many :ratings
  has_many :events, as: :host
  has_many :events, as: :attendee
  has_many :lists
  has_many :movies, through: :list

  #<User id: nil, username: nil, password_digest: nil, created_at: nil, updated_at: nil>
end
