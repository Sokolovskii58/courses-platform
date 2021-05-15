Rails.application.routes.draw do
  devise_for :users do
    get 'main#index', :to => 'devise/registrations#new'      
  end
  resources :courses
  root to: "main#index"
end
