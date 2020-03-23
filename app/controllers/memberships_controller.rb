class MembershipsController < ApplicationController
    
    def new
        @user = User.find(params[:user_id])
        @group_list = Group.all.select do |group|
            !@user.groups.include?(group)
        end     
        @membership = Membership.new
    end 

    def create 
    end 



    private 

    def strong_params
        params.restrict(:membership).permit(:user_id,:group_id)
    end 
end
