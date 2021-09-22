# frozen_string_literal: true

module Api
  module V1
    # Controller for Throw model
    class ThrowsController < ApplicationController
      before_action :set_throw, only: %i[show update destroy]

      # GET /throws
      def index
        @throws = Throw.all

        render json: @throws
      end

      # GET /throws/{id}
      def show
        render json: @throw
      end

      # POST /throws
      def create
        @throw = Throw.new(throw_params)
        game = Game.find_by_id(params[:game][:id])

        if game.nil?
          render json: {
            message: "Game with id #{params[:game][:id]} does not exists"
          }, status: :not_found

          return
        end

        if game.finished?
          render json: {
            message: "Game with id #{params[:game][:id]} is already finished"
          }, status: :conflict

          return
        end

        if @throw.save
          game.update_game_with_throw(@throw)

          render json: @throw, status: :created
          return
        end

        render json: @throw.errors, status: :unprocessable_entity
      end

      # PATCH/PUT /throws/1
      def update
        if @throw.update(throw_params)
          render json: @throw
        else
          render json: @throw.errors, status: :unprocessable_entity
        end
      end

      # DELETE /throws/1
      def destroy
        @throw.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_throw
        @throw = Throw.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def throw_params
        params.require(:throw).permit(:knocked_pins)
      end
    end
  end
end
