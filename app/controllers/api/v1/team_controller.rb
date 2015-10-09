module Api
  module V1
  	class TeamController < ApplicationController

      before_action :set_team, only: [:show, :update, :destroy]

  		respond_to :json

  		# GET
  		# =================================================
  		# =================================================
  		def index

        new_params = params.permit plist

        q = "SELECT * FROM teams"
        q << Tools.query(new_params)

  			@teams = Team.find_by_sql q

  			respond_with @teams,root: :teams

  		end
  		# =================================================
  		# =================================================


  		# GET
  		# =================================================
  		# =================================================
  		def show

  			respond_with @team

  		end
  		# =================================================
  		# =================================================


  		# PUT
  		# =================================================
  		# =================================================
  		def update

        if @team.update(team_params)

          render json: @team,status: :ok

        else

          render json: {error: true,errors: @team.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================


  		# POST
  		# =================================================
  		# =================================================
  		def create

  			@team = Team.new team_params

  			if @team.save

  				render json: @team,status: :created

  			else

  				render json: {error: true,errors: @team.errors},status: :unprocessable_entity

  			end

  		end
  		# =================================================
  		# =================================================


  		# DELETE
  		# =================================================
  		# =================================================
  		def destroy

        if @team.destroy

          render json: {team: {id: params[:id].to_i}},status: :ok

        else

          render json: {error: true,errors: @team.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_team
        @team = Team.find params[:id]
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def team_params
        params.require(:team).permit plist
      end

      def plist
        [:name,:short,:primary,:secondary,:created_at,:updated_at]
      end

  	end
  end
end