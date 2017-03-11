class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  def increase_guess
    current_guess = self.guesses + 1
    self.update_attributes(:guesses => current_guess)
  end

  def add_points
    current_points = self.points + 1
    self.update_attributes(:points => current_points)
  end
end
