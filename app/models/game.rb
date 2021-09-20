class Game < ApplicationRecord
  has_many :frames

  before_save :default_values

  def default_values
    self.total_score = 0 if total_score.nil?
  end
end
