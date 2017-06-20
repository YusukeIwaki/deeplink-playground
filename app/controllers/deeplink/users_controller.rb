class Deeplink::UsersController < ApplicationController
    layout false
    before_action :set_user, only: [:show]

    def show
        if params[:sex].present?
            redirect_to user_path(@user) and return
        end

        if params[:js].blank?
            redirect_to deeplink_user_sex_path(
                id: @user.id,
                sex: @user.sexes
            ) and return
        end
    end
    
    private
    
    def set_user
        @user = User.find(params[:id])
    end
end
