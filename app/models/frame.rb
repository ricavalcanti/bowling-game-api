class Frame < ApplicationRecord
  belongs_to :game
  has_and_belongs_to_many :throws

  enum frame_type: {
    normal: 0,
    spare: 1,
    strike: 2
  }

  def add_throw(throw)
    if should_add_throw
      throws << throw
      self.frame_score += throw.knocked_pins
      self.waiting_how_much_throws -= 1
      save
    end
  end

  def update_type
    if self.frame_score == 10
      self.frame_type = self.waiting_how_much_throws.zero? ? 1 : 2
      self.waiting_how_much_throws = Frame.frame_types[frame_type]
      save
    end
  end

  def last_frame?
    frame_number == 10
  end

  def self.create_empty_frame(game, frame_number)
    create(
      {
        frame_number: frame_number,
        frame_score: 0,
        frame_type: 0,
        waiting_how_much_throws: 2,
        game: game
      }
    )
  end

  private

  def should_add_throw
    !self.waiting_how_much_throws.zero?
  end
end
