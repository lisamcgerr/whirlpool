class Game < ApplicationRecord
    has_many :sessions
    has_many :user_sessions, through: :sessions
end
