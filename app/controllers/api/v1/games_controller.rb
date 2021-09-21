# frozen_string_literal: true

module Api
  module V1
    # Controller for Game model
    class GamesController < ApplicationController
      before_action :find_game, only: %i[show destroy]

      # GET /games
      def index
        games = Game.all

        render json: games.to_json(include: :frames)
      end

      # GET /games/{id}
      def show
        render json: @game.to_json(include: :frames)
      end

      # POST /games
      # Should create a game with the given params
      def create
        @game = Game.create({ total_score: game_params[:total_score] })
        create_game_frames(@game, game_params[:frames])

        render json: { data: @game.to_json(include: :frames) }, status: :created
      end

      # DELETE /games/{id}
      def destroy
        Frame.destroy_by(game: @game)
        @game.destroy
      end

      private

      def game_params
        params.permit(:total_score, :frames)
      end

      def find_game
        @game = Game.find(params[:id])
      end

      def create_game_frames(game, frames)
        if frames.nil?
          Frame.create_empty_frame(game, 1)
        else
          frames.each do |frame|
            Frame.create({ **frame, game: game })
          end
        end
      end

    end
  end
end
