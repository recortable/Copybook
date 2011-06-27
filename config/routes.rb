Copybook::Application.routes.draw do

  resources :publishers , :path => 'editores'
  resources :publications, :path => 'publicaciones'
  resources :books, :path => 'libros' do
    resources :downloads, :path => 'descargas'
    resources :chapters, :path => 'capitulo', :only => [:show]
  end

  resources :chapters do
    resources :downloads, :path => 'descargas'
  end

  resources :licenses, :path => 'licencias'

  match "/auth/:provider/callback" => "sessions#create"
  match "/entrar" => "sessions#new", :as => :login
  match "/salir" => "sessions#destroy", :as => :logout
  match "/enter/:id" => "sessions#enter", :as => :enter
  root :to => 'publications#welcome'
end
