class MeetupsController < ApplicationController
	def show
		set_user_instance
		set_instance
	end

	def new 
		set_user_instance
		set_instance
	end

	def create
	end 

	

	private

	def set_instance
		if params[:id]
			@meetup = Meetup.find(params[:id])
		else
			@meetup = Meetup.new
		end
	end
end
