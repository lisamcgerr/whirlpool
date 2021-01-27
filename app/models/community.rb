class Community < ApplicationRecord
    has_many :user_communities
    has_many :users, through: :user_communities

    validates :title, uniqueness: true

    def self.most_popular_community
        self.all.max_by{|community| community.users.count}
    end

  
end
