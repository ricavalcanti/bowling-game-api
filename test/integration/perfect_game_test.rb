require 'test_helper'

class ThrowsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    game = GameService.create_game
    12.times do
      post api_v1_throws_url, params: {
        throw: { knocked_pins: 10 },
        game: { id: game.id }
      }, as: :json
    end
    game.reload

    assert(game.finished?)
    assert_equal(300, game.total_score)
    assert_equal(10, game.frames.size)
  end
end