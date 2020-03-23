class LocationsController < ApplicationController
	def show
		set_user_instance
		set_instance
	end

	private

	def set_instance
		@location = Location.find(params[:id])
	end	
end
