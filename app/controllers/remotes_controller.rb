class RemotesController < ApplicationController
    before_action :require_login?
    def index
        @user = User.find(session[:current_user_id])
    end
end
