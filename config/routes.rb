Rubytrist::Application.routes.draw do
  resource :session, :only => [:create, :destroy]

  get "home/index"
  root :to => 'home#index'
end
