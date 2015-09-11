module Api
  module V1
  	class GameController < ApplicationController

      before_action :set_game, only: [:show, :update, :destroy]

  		respond_to :json

  		# GET
  		# =================================================
  		# =================================================
  		def index

        new_params = params.permit plist

        q = "SELECT * FROM games"
        q << Tools.query(new_params)

  			@games = Game.find_by_sql q

  			respond_with @games,root: :games

  		end
  		# =================================================
  		# =================================================


  		# GET
  		# =================================================
  		# =================================================
  		def show

  			respond_with @game

  		end
  		# =================================================
  		# =================================================


  		# PUT
  		# =================================================
  		# =================================================
  		def update

        if @game.update(game_params)

          render json: @game,status: :ok

        else

          render json: {error: true,errors: @game.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================


  		# POST
  		# =================================================
  		# =================================================
  		def create

  			@game = Game.new game_params

  			if @game.save

  				render json: @game,status: :created

  			else

  				render json: {error: true,errors: @game.errors},status: :unprocessable_entity

  			end

  		end
  		# =================================================
  		# =================================================


  		# DELETE
  		# =================================================
  		# =================================================
  		def destroy

        if @game.destroy

          render json: {game: {id: params[:id].to_i}},status: :ok

        else

          render json: {error: true,errors: @game.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_game
        @game = Game.find params[:id]
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def game_params
        params.require(:game).permit plist
      end

      def plist
        [:away_id,:home_id,:created_at,:updated_at]
      end

  	end
  end
end