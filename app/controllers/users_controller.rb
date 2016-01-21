class UsersController < ApplicationController
    before_action :authenticate_user!
    def show
        @user = User.find(params[:id])
    end
    def index
        @User = User.all
         @users = User.includes(:profile)
    end
end