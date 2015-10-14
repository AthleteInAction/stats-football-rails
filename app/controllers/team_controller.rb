class TeamController < ApplicationController

	def index

		respond_to do |format|
			format.pdf do

				pdf = SummaryPdf.new
				send_data pdf.render,
				filename: "test.pdf",
				type: "application/pdf",
				disposition: "inline"

		    end
		end

	end

end