class MeetupsController < ApplicationController
		
	def new 
		@meetup = Meetup.new
	end

	def create

		set_instance
		group = Group.find_by_slug(params[:group_slug])

		location_average_differentials = {}
		Location.all.sample(15).each do |location|
			location_differentials_total = CommuteDifferential.where(user: group.members, location: location).sum(&:differential)
			location_average_differential = location_differentials_total / group.members.count.to_f
			location_average_differentials[location] = location_average_differential
		end
		
		locations = location_average_differentials.sort_by{|k,v| v}.first(6)
		prime_location = locations.shift
		@alternate_locations = locations
		time = (prime_location[1])
		@meetup = Meetup.create(
			group: group, 
			location: prime_location[0], 
			date: params[:meetup][:date], 
			average_additional_commute_time: time,
			status: 1
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

	def update
		set_instance
		@meetup.slug = nil
		location = JSON.parse(params[:meetup][:location_id])
		@meetup.update(location_id: location[0], average_additional_commute_time: location[1])
		redirect_to group_meetup_path(@meetup.group, @meetup)
	end 

	def destroy
		set_instance
		@meetup.destroy
		@group = @meetup.group
		redirect_to group_path(@group)
	end

	private

	def set_instance
		if params[:slug]
			@meetup = Meetup.friendly.find_by_slug(params[:slug])
		else
			@meetup = Meetup.new
		end
	end
end
