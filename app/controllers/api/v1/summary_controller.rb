module Api
  module V1
  	class SummaryController < ApplicationController

  		def index

  			respond_to do |format|
  				format.pdf do

  					pdf = SummaryPdf.new params
  					send_data pdf.render,
  					filename: "test.pdf",
  					type: "application/pdf",
  					disposition: "inline"

  			    end
  			end

  		end

  		def create

  			SummaryMailer.summary(params.require(:summary)).deliver

  			render json: params

  		end

  	end
  end
end