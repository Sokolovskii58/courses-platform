class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  add_breadcrumb "Home", :root_path

  def index
    @pagy, @users = pagy(User.all, items: 9)
    add_breadcrumb "Users", users_path

  end

  def edit
    authorize @user
  end

  def update
    authorize @user
    if @user.update(user_params)
      redirect_to users_path, notice: 'User roles successfully updated'
    else
      render :edit
    end
  end

  def show
    add_breadcrumb "users", :users_path
    add_breadcrumb @user.email, current_user
    @courses = @user.courses
  end

  private

    def set_user
      @user = User.friendly.find(params[:id])
    end

    def user_params
      params.require(:user).permit({role_ids: []})
    end

end
