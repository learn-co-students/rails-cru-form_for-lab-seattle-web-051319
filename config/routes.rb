Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :songs, only: [:index, :new, :create, :edit, :update, :show]

  resources :genres, only: [:index, :new, :create, :edit, :update, :show]

  resources :artists, only: [:index, :new, :create, :edit, :update, :show]
end
