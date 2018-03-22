Rails.application.routes.draw do
  get'profiles/:id',to: 'profiles#show', as: :profile

  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "posts#index"

end
