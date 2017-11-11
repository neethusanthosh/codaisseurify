Rails.application.routes.draw do
  root to: 'pages#home'
  root  'artists#index'
  get "artists" => 'artists#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
