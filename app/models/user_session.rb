class UserSession < ApplicationRecord
  belongs_to :user
  belongs_to :session

  validates :user_id, uniqueness: { scope: :session_id }

  validate :validate_age
  validate :validate_players

  def validate_age
    if self.user.age < self.session.game.min_age
      self.errors[:age] << "User is too young to play this game."
    end
  end

  def validate_players
    if self.session.users.count >= self.session.game.max_players
      self.errors[:user] << "Cannot add another player, max players reached for this game."
    end
  end

end