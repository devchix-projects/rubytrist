Rubytrist::Application.routes.draw do

  resource :session, :only => [:create, :destroy]

  resources :users

  resources :profiles

  resources :postlets

  resources :clips

  resources :boards

  get "home/index"
  root :to => 'home#index'
end
