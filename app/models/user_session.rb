class UserSession < ApplicationRecord
  belongs_to :user
  belongs_to :session


  validate :validate_age

  def validate_age
    if self.user.age < self.session.game.min_age
      self.errors[:age] << "User is too young to play this game."
    end
  end

end
