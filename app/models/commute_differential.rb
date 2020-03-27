class CommuteDifferential < ApplicationRecord
	belongs_to :user
	belongs_to :location

	def self.calculate
		# Expectation is that every user and every location will have a row that joins them
		
		# set up a commute time holder hash
		original_commute_times = {}
		
		User.all.each do |user| 

			# append this user's commute to the hash
			original_commute_times[user.id] = self.original_commute_time(user.work_address, user.home_address)

			Location.all.each do |location|
				if self.find_by(user: user, location: location)
					# already exists, skip
				else
					# doesn't exist, need to calculate
					# doTheCalculationAPIRequest

          			commute_time = self.new_commute_time(user.work_address, location.address, user.home_address)
          			difference = commute_time - original_commute_times[user.id]
          			CommuteDifferential.create(user: user, location: location, differential: difference)
				end
			end
		end
	end
  
  	def self.new_commute_time(work_address, meetup_address, home_address)
		response = RestClient.get("https://maps.googleapis.com/maps/api/directions/json?&origin=#{work_address}&waypoints=via:#{meetup_address}&destination=#{home_address}&key=#{self.gmaps_api_key}")
		parsed = JSON.parse(response.body)
		commute_time = (parsed["routes"][0]["legs"][0]["duration"]["value"].to_f / 60)
	end

	def self.original_commute_time(work_address, home_address)
		request_url = "https://maps.googleapis.com/maps/api/directions/json?&origin=#{work_address}&destination=#{home_address}&key=#{self.gmaps_api_key}"
		response = RestClient.get(request_url)
		parsed = JSON.parse(response.body)
		commute_time = (parsed["routes"][0]["legs"][0]["duration"]["value"].to_f / 60)
	end

	def self.gmaps_api_key
		Rails.application.credentials.gmaps[:api_key]
	end

end
