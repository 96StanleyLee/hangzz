class LocationsController < ApplicationController
	def show
		set_instance
	end

	private

	def set_instance
		@location = Location.friendly.find_by_slug(params[:slug])
	end	
end
