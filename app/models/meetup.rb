class Meetup < ApplicationRecord
  enum status: { pending: 0, confirmed: 1}
  belongs_to :group
  belongs_to :location


#   def location_select
#     locations = Location.all
#     group_members = Group.find(params[:group_id]).members

#     output_array = []

#     location.each do |location|
            
#       #calculates all the time added for this location for these members
#       #time_accumulated = 0 
#       group_members.each do |member|
#         # original_commute_time =  api_call(work_address, home_address)
#         # commute_time_with_meetup = api_call(work_address, location.address, home_address)
#         # time_accumulated += (commute_time_with_meetup - original_commute_time)
#       end 
      
#       output_array.push({
#         location: location, 
#         added_commute_time: time_accumulated
#       })
      
#     end

#     output_array.sort_by{|location| location['added_commute_time'] }.reverse.take(5)
#   end
# end


def maps_api_call_test
  start_address = User.first.work_address
  waypoints = [Location.first.address]
  end_address = User.first.home_address

  original_commute_time = ''

end


# API Call: (GET)
# http://maps.googleapis.com/maps/api/directions/json
# ?key=OUR_AUTH_KEY_JDSKZR98EV
# &origin=work+address
# &waypoints=[bar+or+restaurant+address]
# &destination=home+address
# &mode=transit
# &departure_time=6PM+Wednesday