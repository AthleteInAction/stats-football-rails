class StatsMailer < ActionMailer::Base

	require 'prawn/table'
	  
	default from: "notifications@wambl.com"

	def stats data

	  stats = StatsPdf.new data
	  s = "#{data[:away][:name]} @ #{data[:home][:name]} stats #{data[:team][:name]}.pdf".underscore
	  attachments[s] = {mime_type: 'application/pdf',content: stats.render}
	  mail to: data[:email],subject: "#{data[:team][:name]} Stats"

	end

end
# mysql://b306689bcbf7c9:fce90ced@us-cdbr-iron-east-03.cleardb.net/heroku_90f11396b12dec4?reconnect=true