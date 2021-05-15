Rails.application.routes.draw do
  resources :courses
  root to: "main#index"
end
