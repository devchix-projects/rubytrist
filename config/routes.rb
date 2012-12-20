Rubytrist::Application.routes.draw do
  resource :session, :only => [:create]

  get "home/index"
  root :to => 'home#index'
end
