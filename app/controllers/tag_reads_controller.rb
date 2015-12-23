class TagReadsController < ApplicationController
	skip_before_filter  :verify_authenticity_token

	def create
		# tag_params.each do |key, value|
		#		p [key, value].join(' ===> ')
		#end

		epc = request.body.read.strip
		
		render plain: "https://4eebfa44.ngrok.com/equipments/#{epc}"
	end

private

	def tag_params
		params.permit(:grokker_id)
	end	
end

# curl -d "grokkerId=GROKKER_ID&timestamp=TIMESTAMP&epc=EPC" http://localhost:3000/tag_reads
