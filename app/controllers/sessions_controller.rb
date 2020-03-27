class SessionsController < ApplicationController

	skip_before_action :authorized, only: [:new, :create]


	def new
	end

	def create
		@user = User.find_by(email: params[:email])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to root_path
		else
			flash[:alert] = ['Email or password is incorrect']
			redirect_to login_path
		end 	
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_path
	end

end


#chicken scratch
# original_commute_times = {}
# Users.each do |user|
# original_commute_time[user] = original_commute_time(member.work_address, member.home_address)
#end 
# -- > Original commute time for the user in a hash 
# 
#Location.all.each do |location|
# 		Users.each do |user|
# 		new_commute = new_commute_time(user.work_address, location.address, user.home_address)
# 		original_commute = original_commute_time[user]
# 		commute_difference = (new_commute - original_commute)
# 		CommuteDifferential.create(user: user, location: location, differential: commute_difference)
#	end 
#end 
# --> Goes through each location, then each user
# --> computes the difference between original/new
# --> creates a  new CommuteDifferential record
# --> loops back for next user/location eventually.

# ^^ Perfect!
# : )
