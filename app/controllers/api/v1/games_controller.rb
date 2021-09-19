# frozen_string_literal: true

module Api
  module V1
    # Controller for Game model
    class GamesController < ApplicationController
      before_action :find_game, only: %i[show]

      # GET /games
      def index
        @games = Game.all

        render json: @games
      end

      # GET /games/1
      def show
        render json: @game
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def find_game
        @game = Game.find(params[:id])
      end
    end
  end
end
