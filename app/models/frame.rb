class Frame < ApplicationRecord
  belongs_to :game
  has_and_belongs_to_many :throws

  enum frame_type: {
    normal: 0,
    spare: 1,
    strike: 2
  }

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
end
