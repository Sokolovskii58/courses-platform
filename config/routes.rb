Rails.application.routes.draw do
  default_url_options :host => "localhost:3000"

  devise_for :users do
    get 'main#index', :to => 'devise/registrations#new'
  end
  resources :courses
  resources :users
  get 'admin/activity'
  get "/admin" => "admin#index", as: :index

  root to: "main#index"
end
