Rails.application.routes.draw do
  resources :categories do
    resources :tasks
  end

  root 'categories#index'
  # get 'categories' => 'categories#index'
  # get 'categories/:id', to: 'categories#show'
end
