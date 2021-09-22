# frozen_string_literal: true

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @game = games(:first_game)
    @frames = frames(:first_frame, :second_frame)
    @throws = throws(:first_throw, :second_throw)
  end

  test 'update_game_with_throw should update an game and your respective frames' do
    # given
    expected_throws = count_game_throws(@game) + 1

    # when
    throw = Throw.new({ knocked_pins: 5 })
    @game.update_game_with_throw(throw)

    # then
    assert_equal(expected_throws, count_game_throws(@game))
  end

  test 'create_game_frames should create an empty frame when no params passed' do
    # given
    empty_game = games(:empty_game)
    expected_frames_number = 1

    # when
    empty_game.create_game_frames(nil)

    # then
    assert_equal(expected_frames_number, empty_game.frames.count)
  end

  test 'create_game_frames should create all given frames for a game' do
    # given
    empty_game = games(:empty_game)
    expected_frames_number = @frames.count

    # when
    empty_game.create_game_frames(get_frames_as_hash(@frames))

    # then
    assert_equal(expected_frames_number, empty_game.frames.count)
  end

  private

  def count_game_throws(game)
    game.frames.reduce(0) { |sum, frame| sum + frame.throws.count }
  end

  def get_frames_as_hash(frames)
    frames.map { |frame| frame.attributes.except('id') }
  end
end
