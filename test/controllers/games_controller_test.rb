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
end
