class Session < ApplicationRecord
  belongs_to :game
  has_many :user_sessions
  has_many :users, through: :user_sessions

  #add validations

  def self.public_sessions
    self.all.select do |session|
      session.public == true
    end
  end

  def show_date
    self.date.strftime("%A, %B %e, %Y at %I:%M %p")
  end

end
