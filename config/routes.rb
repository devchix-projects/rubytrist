Rubytrist::Application.routes.draw do
  resources :tags

  resources :users

  resources :profiles

  resources :postlets
  
  resources :clips do
    member do 
      post "add_tag" => "clips#add_tag"
    end
  end

  resources :boards 

  resource :session, :only => [:create]

  get "home/index"
  root :to => 'home#index'
end
