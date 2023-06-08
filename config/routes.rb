Rails.application.routes.draw do
  get 'pet_reviews/new'
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "users#profile"
  get "/users/:id", to: "users#show"
  resources :pets do
    resources :pet_reviews, only: [:create]
    resources :bookings, only:[:create]
    collection do
      get :search
    end
  end
end
