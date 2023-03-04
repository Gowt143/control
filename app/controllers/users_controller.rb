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
    
      private
    
      def user_params
        params.require(:user).permit(:name, :password,:email, :phone, :address)
      end
end
