Rails.application.routes.draw do
  root to: 'pages#home'
  #resources :artists

  get "artists" => 'artists#index'
  get 'artists/new' => "artists#new", as: :new_artist
  get "artists/:id" => "artists#show", as: :artist
  post "artists" => "artists#create"
  get 'artists/:id/edit' => 'artists#edit', as: :edit_artist
  patch "artists/:id" => "artists#update"
  delete "artists/:id" => "artists#destroy"


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
