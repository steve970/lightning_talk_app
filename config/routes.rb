Rails.application.routes.draw do

  root 'welcome#index'
  resources :lightning_talks
  get '/sign-up' => 'registration#new', as: :signup
  post '/sign-up' => 'registration#create'
  get '/sign-in' => 'authentication#new', as: :signin
  post '/sign-in' => 'authentication#create'
  get '/sign-out' => 'authentication#destroy', as: :signout

end
