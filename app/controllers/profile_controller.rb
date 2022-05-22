class ProfileController < ApplicationController
  def index
    @users=User.all
  end

  def show
    if user_signed_in?
      @user=current_user
    else 
      flash[:alert]=" please Login first"
      redirect_to user_session_path
    end
  end
  
end
