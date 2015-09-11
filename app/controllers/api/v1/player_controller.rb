module Api
  module V1
  	class PlayerController < ApplicationController

      before_action :set_player, only: [:show, :update, :destroy]

  		respond_to :json

  		# GET
  		# =================================================
  		# =================================================
  		def index

        new_params = params.permit plist

        q = "SELECT * FROM players"
        q << Tools.query(new_params)

  			@players = Player.find_by_sql q

  			respond_with @players,root: :players

  		end
  		# =================================================
  		# =================================================


  		# GET
  		# =================================================
  		# =================================================
  		def show

  			respond_with @player

  		end
  		# =================================================
  		# =================================================


  		# PUT
  		# =================================================
  		# =================================================
  		def update

        if @player.update(player_params)

          render json: @player,status: :ok

        else

          render json: {error: true,errors: @player.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================


  		# POST
  		# =================================================
  		# =================================================
  		def create

  			@player = Player.new player_params

  			if @player.save

  				render json: @player,status: :created

  			else

  				render json: {error: true,errors: @player.errors},status: :unprocessable_entity

  			end

  		end
  		# =================================================
  		# =================================================


  		# DELETE
  		# =================================================
  		# =================================================
  		def destroy

        if @player.destroy

          render json: {player: {id: params[:id].to_i}},status: :ok

        else

          render json: {error: true,errors: @player.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_player
        @player = Player.find params[:id]
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def player_params
        params.require(:player).permit plist
      end

      def plist
        [:created_at, :updated_at]
      end

  	end
  end
end