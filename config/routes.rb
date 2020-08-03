Rails.application.routes.draw do

  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # Initialisesa resource named "Article"
  resources :articles



  # Directs requests to the root of the web app to go to welcome/index   <- Welcome controller & index.erb view
  root 'welcome#index'

  
end
