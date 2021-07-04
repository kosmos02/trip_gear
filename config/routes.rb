Rails.application.routes.draw do
  resources :trip_gears, only: :create
  resources :trips, only: %i[index create]
  resources :user_gears, only: [:create]
  resources :gears, only: [:index, :destroy]
  resources :users, only: [:create, :index, :destroy]

  get '/formatted_gears', to: 'gears#check_gear_status'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
