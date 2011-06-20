Copybook::Application.routes.draw do
  root :to => 'publishers#show'

  resources :publishers
  resources :publications
  resources :licenses
end
