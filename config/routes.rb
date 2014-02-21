Voter::Application.routes.draw do
  resources :sessions
  resources :users
  resources :votes

  root 'users#new'
end
