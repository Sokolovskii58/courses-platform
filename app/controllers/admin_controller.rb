class AdminController < ApplicationController

  def index
  end
  
  def activity
    if current_user.has_role?(:admin)
      @activities = PublicActivity::Activity.all
    else
      redirect_to root_path, notice: "Your dont have permissions"
    end
  end



end
