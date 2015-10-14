module Api
  module V1
  	class Stats_passingController < ApplicationController

      before_action :set_stats_passing, only: [:show, :update, :destroy]

  		respond_to :json

  		# GET
  		# =================================================
  		# =================================================
  		def index

        new_params = params.permit plist

        q = "SELECT * FROM stats_passings"
        q << Tools.query(new_params)

  			@stats_passings = Stats_passing.find_by_sql q

  			respond_with @stats_passings,root: :stats_passings

  		end
  		# =================================================
  		# =================================================


  		# GET
  		# =================================================
  		# =================================================
  		def show

  			respond_with @stats_passing

  		end
  		# =================================================
  		# =================================================


  		# PUT
  		# =================================================
  		# =================================================
  		def update

        if @stats_passing.update(stats_passing_params)

          render json: @stats_passing,status: :ok

        else

          render json: {error: true,errors: @stats_passing.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================


  		# POST
  		# =================================================
  		# =================================================
  		def create

  			@stats_passing = Stats_passing.new stats_passing_params

  			if @stats_passing.save

  				render json: @stats_passing,status: :created

  			else

  				render json: {error: true,errors: @stats_passing.errors},status: :unprocessable_entity

  			end

  		end
  		# =================================================
  		# =================================================


  		# DELETE
  		# =================================================
  		# =================================================
  		def destroy

        if @stats_passing.destroy

          render json: {stats_passing: {id: params[:id].to_i}},status: :ok

        else

          render json: {error: true,errors: @stats_passing.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_stats_passing
        @stats_passing = Stats_passing.find params[:id]
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def stats_passing_params
        params.require(:stats_passing).permit plist
      end

      def plist
        [
          :game_id,
          :team_id,
          :player,
          :att,
          :comp,
          :yds,
          :td,
          :int,
          :long
          :created_at,
          :updated_at
        ]
      end

  	end
  end
end