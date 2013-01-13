Rubytrist::Application.routes.draw do
  resources :users

  resources :profiles

  resources :postlets

  resources :clips

  resources :boards

  resource :session, :only => [:create]

  get "home/index"
  root :to => 'home#index'
end
