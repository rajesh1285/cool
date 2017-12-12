Rails.application.routes.draw do  
<<<<<<< HEAD
  devise_for :users
  root "posts#index"
  
  resources :posts do 
	  	member do
      put "like", to:    "posts#upvote"
      put "dislike", to: "posts#downvote"
    end
  	resources :comments
  end
  #get 'pages/about'

get '/about', :to => 'pages#about'  
=======
  root "posts#index"
  resources :posts
>>>>>>> origin/master
end
