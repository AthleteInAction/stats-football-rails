module Api
  module V1
  	class StatsController < ApplicationController

  		def index

  			respond_to do |format|
  				format.pdf do

  					pdf = StatsPdf.new params
  					send_data pdf.render,
  					filename: "stats.pdf",
  					type: "application/pdf",
  					disposition: "inline"

  			    end
  			end

  		end

  		def create

  			StatsMailer.stats(params.require(:stats)).deliver

  			render json: params

  		end

  	end
  end
end