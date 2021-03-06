Rails3MongoidDevise::Application.routes.draw do
  resources :rooms

  resources :requests

  resources :device_users

  resources :data

  resources :devices

  post 'sendData' => 'data#process_data', :as => :sendData

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end