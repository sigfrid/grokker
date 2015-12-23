class EquipmentsController < ApplicationController
	skip_before_filter  :verify_authenticity_token

	def show
		@equipment = Equipment.new(params[:id])
	end	
end
