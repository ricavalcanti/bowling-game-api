class GameService
  def self.create_game
    game = Game.create
    game.create_game_frames
    game
  end
end
