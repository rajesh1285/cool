Rails.application.routes.draw do  
  root "posts#index"
  
  resources :posts do 
  	resources :comments
  end
  #get 'pages/about'

get '/about', :to => 'pages#about'  
end
