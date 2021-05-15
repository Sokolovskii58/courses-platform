class MainController < ApplicationController
  add_breadcrumb "home", :root_path
  add_breadcrumb "courses", :courses_path

  def index

    add_breadcrumb "index", root_path
  end
end
