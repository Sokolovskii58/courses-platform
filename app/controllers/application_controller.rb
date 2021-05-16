class ApplicationController < ActionController::Base
  include Pagy::Backend
  include PublicActivity::StoreController
end
