Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "users#profile"
  resources :pets do
    resources :bookings, only:[:create]
    collection do
      get :search
    end
  end
end
