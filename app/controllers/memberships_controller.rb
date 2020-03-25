class MembershipsController < ApplicationController
    
    def new
        @user = User.find_by_slug(params[:slug])
        @group_list = Group.all.select do |group|
            !@user.groups.include?(group)
        end     
        @membership = Membership.new
    end 

    def create 
        @group = Group.find(params[:membership][:group_id])
        Membership.create(user_id: params[:user_id], group_id: params[:membership][:group_id])
        redirect_to @group
    end 

    def delete
        Membership.destroy(params[:id])
    end


    private 

    def strong_params
        params.restrict(:membership).permit(:user_id,:group_id)
    end 

end
