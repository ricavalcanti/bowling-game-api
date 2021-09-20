class Frame < ApplicationRecord
  belongs_to :game

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
        remain_balls: 2,
        is_strike: false,
        is_spare: false,
        waiting_how_much_balls: 0,
        first_ball_score: 0,
        second_ball_score: 0,
        extra_ball_score: 0,
        game: game
      }
    )
  end
end
