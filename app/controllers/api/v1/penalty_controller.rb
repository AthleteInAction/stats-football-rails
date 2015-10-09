module Api
  module V1
  	class PenaltyController < ApplicationController

      before_action :set_penalty, only: [:show, :update, :destroy]

  		respond_to :json

  		# GET
  		# =================================================
  		# =================================================
  		def index

        new_params = params.permit plist

        q = "SELECT * FROM penaltys"
        q << Tools.query(new_params)

  			@penaltys = Penalty.find_by_sql q

  			respond_with @penaltys,root: :penaltys

  		end
  		# =================================================
  		# =================================================


  		# GET
  		# =================================================
  		# =================================================
  		def show

  			respond_with @penalty

  		end
  		# =================================================
  		# =================================================


  		# PUT
  		# =================================================
  		# =================================================
  		def update

        if @penalty.update(penalty_params)

          render json: @penalty,status: :ok

        else

          render json: {error: true,errors: @penalty.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================


  		# POST
  		# =================================================
  		# =================================================
  		def create

  			@penalty = Penalty.new penalty_params

  			if @penalty.save

  				render json: @penalty,status: :created

  			else

  				render json: {error: true,errors: @penalty.errors},status: :unprocessable_entity

  			end

  		end
  		# =================================================
  		# =================================================


  		# DELETE
  		# =================================================
  		# =================================================
  		def destroy

        if @penalty.destroy

          render json: {penalty: {id: params[:id].to_i}},status: :ok

        else

          render json: {error: true,errors: @penalty.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_penalty
        @penalty = Penalty.find params[:id]
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def penalty_params
        params.require(:penalty).permit plist
      end

      def plist
        [
          :game_id,
          :sequence_id,
          :team_id,
          :distance,
          :end_x,
          :enforcement,
          :player,
          :created_at,
          :updated_at
        ]
      end

  	end
  end
end