class MeetupsController < ApplicationController
	
	# Guess this one works, test it later after making a meetup
		#=> cool!
	#I think we're moving realy quickly, after lunch and making sure this part works should we move into
	#authentication? Unless theres another thing we're missing out on 
		#=> depending how much he shows us in this lecture. 
		#=> i'd rather build it right the first time.
		#=> ... I've done a lot of janky/shitty implementations of auth in the past, we can
		#=>		definitely "make it work", but i wanna learn the rails way.
		#=> 1. We can also implement some nice frontend stuff like:
		#=>			- maps embeds, dropping pins on them for our locations
		#=>			- go ahead and build the views for login and register, in advance
		#=>			- do you want to implement that Flash gem? 
		#=> 		- Yeah seems easy enough to implement. Are you deciding on using bcrypt?
		#=>			- Bcrypt looks good to me, yeah. Do you have a preference of another way?
		#=>			- With the already implemented password= setter in Bcrypt, thats assuming the column name is
		#=> password_digest, are we thinking of making a custom setter or leaving it as is? 
		#= > Looking up some docs I see that most people just stick to the default password_digest
		#=> 2. We can also implement some validations of addresses, show the user a map while they enter their
		#=>		work/home addresses, to help them confirm that google will interpret it correctly


		#Modifying our show page with a edit/delete button/confirm
		#perhaps implement friendlyID, along google maps embedded maps.
		
	def new 
		set_instance
	end

	def create
		set_instance
		@locations = @meetup.maps_api_call(params[:group_id]).sort_by {|k,v| v}.first(5)
		prime_location = @locations.first
		time = (prime_location[1] / Group.find(params[:group_id]).members.count) * 1.0
		time = time.round(1)
		@meetup = Meetup.create(
			group_id: params[:group_id], 
			location_id: prime_location[0].id, 
			date: params[:meetup][:date], 
			average_additional_commute_time: time
			)
		render :show
	end

	def show
		set_instance
		# Dealing with meetups that don't have any times in them.
		if @meetup.average_additional_commute_time
			# @meetup.average_additional_commute_time
		else 
			@meetup.average_additional_commute_time = 0 
		end
	end

	def destroy
		Meetup.destroy(params[:id])
		redirect_to group_path(params[:group][:id])
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
