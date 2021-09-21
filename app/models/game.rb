class Game < ApplicationRecord
  has_many :frames

  before_save :default_values

  def default_values
    self.total_score = 0 if total_score.nil?
  end

  def fill_frames_with_throw(throw)
    last_frame = frames.last
    last_frame.add_throw(throw)
    last_frame.update_type

    frames[-2]&.add_throw(throw)
    frames[-3]&.add_throw(throw)
  end
end
