class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @user = User.find_by(username: params[:session][:username],password: params[:session][:password])
    if @user
      log_in(@user)
      render json: current_user
    else
      render json: "没能找到对应的用户"
    end

  end
end
