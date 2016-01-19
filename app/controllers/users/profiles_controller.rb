class ProfilesController < ApplicationController
    def new
        #fill out user info
        @user = User.find(params[:user_id])
        @profile = @user.build_profile
    end
end