class UsersController < ApplicationController
  add_breadcrumb "home", :root_path

  def index
    @pagy, @users = pagy(User.all, items: 9)
    add_breadcrumb "Users", users_path

  end
end
