# frozen_string_literal: true

require 'json'

module Api
  module V1
    # Controller for Game model
    class GamesController < ApplicationController
      before_action :find_game, only: %i[show]

      # GET /games
      def index
        games = Game.all

        render json: games.to_json(include: :frames)
      end

      # GET /games/1
      def show
        render json: @game.to_json(include: :frames)
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def find_game
        @game = Game.find(params[:id])
      end
    end
  end
end
