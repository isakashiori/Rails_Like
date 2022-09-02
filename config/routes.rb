Rails.application.routes.draw do
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  
  resources :posts do
    collection do
      get :likes
    end
    resources :likes, only: %i[create destroy]
  end

  resources :users, only: %i[new create]
end
