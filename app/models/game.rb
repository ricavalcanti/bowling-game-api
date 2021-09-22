class Game < ApplicationRecord
  has_many :frames

  before_save :default_values

  enum status: {
    running: 0,
    finished: 1
  }

  def update_game_with_throw(throw)
    fill_frames(throw)

    Frame.create_empty_frame(self, frames.last.frame_number + 1) if should_create_new_frame

    update_game_attr(throw)
  end

  def create_game_frames(frames)
    if frames.nil?
      Frame.create_empty_frame(self, 1)
    else
      frames.each do |frame|
        Frame.create({ **frame, game: self })
      end
    end
  end

  private

  def default_values
    self.total_score = 0 if total_score.nil?
    self.status = 0 if status.nil?
  end

  def should_create_new_frame
    current_frame = frames.last
    !current_frame.last_frame? && (
      current_frame.normal? &&
        current_frame.waiting_how_much_throws.zero? ||
        current_frame.spare? || current_frame.strike?
    )
  end

  def should_finish_game
    current_frame = frames.last
    current_frame.last_frame? && current_frame.waiting_how_much_throws.zero?
  end

  def fill_frames(throw)
    current_frame = frames.last
    current_frame.add_throw(throw)
    current_frame.update_type

    frames[-2]&.add_throw(throw)
    frames[-3]&.add_throw(throw)
  end

  def update_game_attr(throw)
    self.status = 1 if should_finish_game
    self.total_score += throw.knocked_pins * throw.frames.count
    save
  end
end
