Rails.application.routes.draw do
  resources :passengers, only: [:index, :show, :create, :destroy]
end
