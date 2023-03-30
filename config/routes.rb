Rails.application.routes.draw do

  resources :hero_powers, only: [:create]
  resources :powers, only: [:index,:show,:update]
  

  get '/heroes', to:"heroes#index"

  get '/heroes/:id', to:"heroes#show"

end
