class MembershipsController < ApplicationController
    
    def new
        @group_list = Group.all - @user.groups
        @membership = Membership.new
    end 

    def create 
        @group = Group.find(params[:membership][:group_id])
        Membership.create(user: @user, group_id: params[:membership][:group_id])
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
