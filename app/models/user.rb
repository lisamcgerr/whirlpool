class User < ApplicationRecord
    has_many :user_sessions
    has_many :user_communities
    has_many :communities, through: :user_communities
    has_many :sessions, through: :user_sessions
end
