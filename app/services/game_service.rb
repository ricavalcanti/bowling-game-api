class GameService
  def self.create_game
    game = Game.create
    game.create_game_frames
    game
  end

  def self.add_throw(throw_params, game_id)
    throw = Throw.new(throw_params)
    game = Game.find_by_id(game_id)

    game.update_game_with_throw(throw)
    [game, throw]
  end
end
