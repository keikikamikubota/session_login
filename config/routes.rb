Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show,]
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :favorites, only: [:create, :destroy]
end
