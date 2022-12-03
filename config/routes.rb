Rails.application.routes.draw do
  root 'categories#index'

  resources :categories

  # get 'categories' => 'categories#index'
  # get 'categories/:id', to: 'categories#show'
end
