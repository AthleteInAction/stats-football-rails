module Api
  module V1
  	class SequenceController < ApplicationController

      before_action :set_sequence, only: [:show, :update, :destroy]

  		respond_to :json

  		# GET
  		# =================================================
  		# =================================================
  		def index

        new_params = params.permit plist

        q = "SELECT * FROM sequences"
        q << Tools.query(new_params)

  			@sequences = Sequence.find_by_sql q

  			respond_with @sequences,root: :sequences

  		end
  		# =================================================
  		# =================================================


  		# GET
  		# =================================================
  		# =================================================
  		def show

  			respond_with @sequence

  		end
  		# =================================================
  		# =================================================


  		# PUT
  		# =================================================
  		# =================================================
  		def update

        if @sequence.update(sequence_params)

          render json: @sequence,status: :ok

        else

          render json: {error: true,errors: @sequence.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================


  		# POST
  		# =================================================
  		# =================================================
  		def create

  			@sequence = Sequence.new sequence_params

  			if @sequence.save

  				render json: @sequence,status: :created

  			else

  				render json: {error: true,errors: @sequence.errors},status: :unprocessable_entity

  			end

  		end
  		# =================================================
  		# =================================================


  		# DELETE
  		# =================================================
  		# =================================================
  		def destroy

        if @sequence.destroy

          render json: {sequence: {id: params[:id].to_i}},status: :ok

        else

          render json: {error: true,errors: @sequence.errors},status: :unprocessable_entity

        end

  		end
  		# =================================================
  		# =================================================

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_sequence
        @sequence = Sequence.find params[:id]
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def sequence_params
        params.require(:sequence).permit plist
      end

      def plist
        
        [:game_id,:team_id,:qtr,:start_x,:start_y,:key,:down,:fd,:replay,:created_at,:updated_at]

      end

  	end
  end
end