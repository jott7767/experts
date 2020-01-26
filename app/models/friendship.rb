class Friendship < ApplicationRecord
  belongs_to :expert, inverse_of: :friendships
  belongs_to :friend, class_name: 'Expert'
end
