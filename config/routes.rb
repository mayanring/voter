Voter::Application.routes.draw do
  resources :sessions
  resources :users

  root 'users#new'
end
