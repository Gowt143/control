class UsersController < ApplicationController
  skip_before_action :require_login?
    def new
        @user = User.new
      end
    
      def create
        @user = User.new(user_params)
        if @user.save
            session[:current_user_id] = @user.id
            redirect_to new_user_path
        else
            render :new, status: :unprocessable_entity
        end
      end

      def index
        @user = User.find(session[:current_user_id])
      end

      def show
        @user = User.find(session[:current_user_id])
      end

      def index
        @users = User.all
      end

      def devices
        @device1 = Device.first
        @device2 = Device.last
      end
    
      private
    
      def user_params
        params.require(:user).permit(:name, :password,:email, :phone, :address)
      end
end
