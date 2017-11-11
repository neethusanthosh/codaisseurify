Rails.application.routes.draw do
  root to: 'pages#home'
  #root    'artists#index'

  get "artists" => 'artists#index'
  get "artists/:id" => "artists#show", as: :artist
  # get 'artists', to:'pages#artists'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
