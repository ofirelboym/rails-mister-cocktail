Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get '/cocktails', to: 'cocktails#index'
# get '/cocktails/:id', to: 'cocktails#show'
# get '/cocktails/new', to: 'cocktails#new'
# post '/cocktails', to: 'cocktails#create'
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:create, :new]
    resources :reviews, only: [:create]
end
    resources :doses, only: [:destroy]
end

