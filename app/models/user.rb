class User < ApplicationRecord
    has_many :user_sessions, dependent: :destroy
    has_many :user_communities, dependent: :destroy
    has_many :communities, through: :user_communities, dependent: :destroy
    has_many :sessions, through: :user_sessions, dependent: :destroy

    validates :username, uniqueness: true
    validates :email, uniqueness: true
    validates :age, numericality: { greater_than: 7}

    has_secure_password

    has_one_attached :avatar
end
