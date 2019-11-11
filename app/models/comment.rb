class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
 
  #<Comment id: nil, user_id: nil, event_id: nil, content: nil, created_at: nil, updated_at: nil>
end
