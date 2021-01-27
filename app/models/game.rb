class Game < ApplicationRecord
    has_many :sessions
    has_many :user_sessions, through: :sessions

    def self.top_played
        self.all.max_by {|game| game.times_played}
    end

    def times_played
        array = self.sessions.map do |session|
            session.users.count
        end
        array.sum
    end
end

# self.all.max_by{|community| community.users.count}
