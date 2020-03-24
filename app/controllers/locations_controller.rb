class LocationsController < ApplicationController
	def show
		set_instance
	end

	private

	def set_instance
		@location = Location.find(params[:id])
	end	
end
