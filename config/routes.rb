Rails.application.routes.draw do
  

  devise_for :users
  resources :countries ,:states
  resources :colleges
  resources :articles

  #get 'show', to: '/article/article.id'
  
root 'pages#home'

get 'pages/about'

namespace :user do
  root :to => "articles#index"
end

#root to: 'home#index'



#get 'signup', to:'users#new'
#Wget 'users/new'
get 'sign_in', to: 'devise/sessions#new'

#resources :users, except: [:new] 
#post 'users', to: 'users#create' 

end
