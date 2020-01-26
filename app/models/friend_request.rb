class FriendRequest < ApplicationRecord
  belongs_to :expert, inverse_of: :friend_requests
  belongs_to :potential_friend, class_name: 'Expert'
end
