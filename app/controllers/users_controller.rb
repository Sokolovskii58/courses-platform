class UsersController < ApplicationController
  add_breadcrumb "Home", :root_path

  def index
    @pagy, @users = pagy(User.all, items: 9)
    add_breadcrumb "Users", users_path

  end

  def show
    @user = User.find(params[:id])
    add_breadcrumb "users", :users_path
    add_breadcrumb @user.email, current_user
  end
end
