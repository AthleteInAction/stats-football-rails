class SummaryMailer < ActionMailer::Base

	require 'prawn/table'

	default from: "summary-mailer@wambl.com"

	def summary data

		summary = SummaryPdf.new data
		s = "#{data[:away][:name]} @ #{data[:home][:name]} summary.pdf".underscore
		attachments[s] = {mime_type: 'application/pdf',content: summary.render}
		mail to: data[:email],subject: "#{data[:away][:name]} @ #{data[:home][:name]} Summary"

	end

end