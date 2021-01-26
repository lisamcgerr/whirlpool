class Session < ApplicationRecord
  belongs_to :game
  has_many :user_sessions
  has_many :users, through: :user_sessions

  
end
