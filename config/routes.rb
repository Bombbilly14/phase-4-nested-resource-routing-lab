Rails.application.routes.draw do
  # /items/ (line 5)
  # /user/:user_id (line 6)
  # but we want /user/:user_id/items (line 7)
  resources :items, only: [:index]
  resources :users, only: [:show] do
    resources :items, only: [:index,  :show, :create]
  end
end
