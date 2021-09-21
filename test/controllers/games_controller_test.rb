# frozen_string_literal: true

require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = games(:one)
  end

  test 'should get index' do
    get api_v1_games_url
    assert_response :success
  end

  test 'should show game' do
    get api_v1_games_url(@game)
    assert_response :success
  end

  test 'should create an empty game' do
    assert_difference('Game.count') do
      post api_v1_games_url
    end

    assert_response :success
  end


  test 'should destroy game' do
    assert_difference('Game.count', -1) do
      delete api_v1_game_url(@game), as: :json
    end

    assert_response 204
  end
end
