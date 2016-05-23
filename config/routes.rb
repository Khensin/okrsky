Rails.application.routes.draw do
  get "exports/index"
  get 'exports/regions'
  get 'exports/municipalities'
  get 'exports/wards'
  get '/exports/:region_id/index', to: 'exports#index'
  get '/exports/:region_id/senat', to: 'exports#senat'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root 'signup#index'

  resources :signup
  get '/stats', to: 'stats#index'
end
