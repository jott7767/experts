class Expert < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :friendships, inverse_of: :expert, dependent: :destroy
  has_many :friends, through: :friendships
  has_many :friend_requests, inverse_of: :potential_friend, dependent: :destroy
  has_many :potential_friends, through: :friend_requests

  def name
    "#{first_name} #{last_name}"
  end
end
