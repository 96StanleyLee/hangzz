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

    def destroy
        Membership.destroy(params[:id])
        redirect_to root_path
    end


    private 

    def strong_params
        params.restrict(:membership).permit(:user_id,:group_id)
    end 

end
