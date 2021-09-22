require 'test_helper'

class ThrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @throw = throws(:first_throw)
    @game = games(:first_game)
  end

  test 'should get index' do
    get api_v1_throws_url, as: :json
    assert_response :success
  end

  test 'should create throw' do
    assert_difference('Throw.count') do
      post api_v1_throws_url, params: {
        throw: { knocked_pins: @throw.knocked_pins },
        game: { game: @game.id }
      }, as: :json
    end

    assert_response 201
  end

  test 'should show throw' do
    get api_v1_throws_url(@throw), as: :json
    assert_response :success
  end

  test 'should update throw' do
    patch api_v1_throw_url(@throw), params: { throw: { knocked_pins: @throw.knocked_pins } }, as: :json
    assert_response 200
  end

  test 'should destroy throw' do
    assert_difference('Throw.count', -1) do
      delete api_v1_throw_url(@throw), as: :json
    end

    assert_response 204
  end
end
