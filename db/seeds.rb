# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Frame.destroy_all
# Game.destroy_all
#
# games = Game.create(
#   [
#     { total_score: 159 },
#     { total_score: 300 }
#   ]
# )
#
# frames_one = [
#   {
#     frame_number: 1,
#     frame_score: 16,
#     remain_balls: 0,
#     is_strike: false,
#     is_spare: true,
#     waiting_how_much_balls: 0,
#     first_ball_score: 6,
#     second_ball_score: 4,
#     game: games.first
#   },
#   {
#     frame_number: 2,
#     frame_score: 7,
#     remain_balls: 1,
#     is_strike: false,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 6,
#     second_ball_score: 7,
#     game: games.first
#   },
#   {
#     frame_number: 3,
#     frame_score: 19,
#     remain_balls: 0,
#     is_strike: false,
#     is_spare: true,
#     waiting_how_much_balls: 0,
#     first_ball_score: 1,
#     second_ball_score: 9,
#     game: games.first
#   },
#   {
#     frame_number: 4,
#     frame_score: 16,
#     remain_balls: 0,
#     is_strike: false,
#     is_spare: true,
#     waiting_how_much_balls: 0,
#     first_ball_score: 9,
#     second_ball_score: 1,
#     game: games.first
#   },
#   {
#     frame_number: 5,
#     frame_score: 9,
#     remain_balls: 0,
#     is_strike: false,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 6,
#     second_ball_score: 3,
#     game: games.first
#   },
#   {
#     frame_number: 6,
#     frame_score: 19,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.first
#   },
#   {
#     frame_number: 7,
#     frame_score: 9,
#     remain_balls: 0,
#     is_strike: false,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 4,
#     second_ball_score: 5,
#     game: games.first
#   },
#   {
#     frame_number: 8,
#     frame_score: 27,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.first
#   },
#   {
#     frame_number: 9,
#     frame_score: 20,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.first
#   },
#   {
#     frame_number: 10,
#     frame_score: 17,
#     remain_balls: 0,
#     is_strike: false,
#     is_spare: true,
#     waiting_how_much_balls: 0,
#     first_ball_score: 7,
#     second_ball_score: 3,
#     game: games.first,
#     extra_ball_score: 7
#   }
# ]
# frames_two = [
#   {
#     frame_number: 1,
#     frame_score: 30,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.last
#   },
#   {
#     frame_number: 2,
#     frame_score: 30,
#     remain_balls: 1,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.last
#   },
#   {
#     frame_number: 3,
#     frame_score: 30,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.last
#   },
#   {
#     frame_number: 4,
#     frame_score: 30,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.last
#   },
#   {
#     frame_number: 5,
#     frame_score: 30,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.last
#   },
#   {
#     frame_number: 6,
#     frame_score: 30,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.last
#   },
#   {
#     frame_number: 7,
#     frame_score: 30,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.last
#   },
#   {
#     frame_number: 8,
#     frame_score: 30,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.last
#   },
#   {
#     frame_number: 9,
#     frame_score: 30,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.last
#   },
#   {
#     frame_number: 10,
#     frame_score: 30,
#     remain_balls: 0,
#     is_strike: true,
#     is_spare: false,
#     waiting_how_much_balls: 0,
#     first_ball_score: 10,
#     second_ball_score: 0,
#     game: games.last,
#     extra_ball_score: 20
#   }
# ]
#
# Frame.create([*frames_one, *frames_two])
