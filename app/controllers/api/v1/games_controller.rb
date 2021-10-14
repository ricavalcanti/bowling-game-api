# frozen_string_literal: true

module Api
  module V1
    # Controller for Game model
    class GamesController < ApplicationController
      before_action :find_game, only: %i[show destroy]

      # GET /games
      def index
        games = Game.all

        render json: games.to_json(include: { frames: { only: :id } })
      end

      # GET /games/{id}
      def show
        render json: @game.to_json(include: { frames: { include: :throws } })
      end

      # POST /games
      # Should create a game with the given params
      def create
        @game = GameService.create_game

        render json: @game.to_json, status: :created
      end

      # DELETE /games/{id}
      def destroy
        Frame.destroy_by(game: @game)
        @game.destroy
      end

      private

      def game_params
        params.permit(:total_score, :status, :frames)
      end

      def find_game
        @game = Game.find(params[:id])
      end
    end
  end
end
