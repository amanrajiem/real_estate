Rails.application.routes.draw do
  resources :commecial_units
  resources :complex_buildings
  resources :houses
  # Homepage
  root :to => 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  post  '/buy', to: 'pages#buy'

end
