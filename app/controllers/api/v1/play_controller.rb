module Api
  module V1
  	class PlayController < ApplicationController

      before_action :set_play, only: [:show, :update, :destroy]

  		respond_to :json

  		# GET
  		# =================================================
  		# =================================================
  		def index

        new_params = params.permit plist

        q = "SELECT * FROM plays"
        q << Tools.query(new_params)

  			@plays = Play.find_by_sql q

  			respond_with @plays,root: :plays

  		end
  		# =================================================
  		# =================================================


  		# GET
  		# =================================================
  		# =================================================
  		def show

  			respond_with @play

  		end
  		# =================================================
  		# =================================================


  		# PUT
  		# =================================================
  		# =================================================
  		def update

        if @play.update(play_params)

          render json: @play,status: :ok

        else

          render json: {error: true,errors: @play.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================


  		# POST
  		# =================================================
  		# =================================================
  		def create

  			@play = Play.new play_params

  			if @play.save

  				render json: @play,status: :created

  			else

  				render json: {error: true,errors: @play.errors},status: :unprocessable_entity

  			end

  		end
  		# =================================================
  		# =================================================


  		# DELETE
  		# =================================================
  		# =================================================
  		def destroy

        if @play.destroy

          render json: {play: {id: params[:id].to_i}},status: :ok

        else

          render json: {error: true,errors: @play.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_play
        @play = Play.find params[:id]
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def play_params
        params.require(:play).permit plist
      end

      def plist
        [:created_at, :updated_at]
      end

  	end
  end
end