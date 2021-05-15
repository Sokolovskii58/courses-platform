class MainController < ApplicationController
  add_breadcrumb "home", :root_path
  add_breadcrumb "courses", :courses_path

  def index
    @courses = Course.all.limit(6)
    @new_courses = Course.all.limit(3).order(created_at: :desc)

    add_breadcrumb "index", root_path
  end
end
