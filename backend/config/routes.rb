Rails.application.routes.draw do
  resources :users
  resources :rounds
  resources :houses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
