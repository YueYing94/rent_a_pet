Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :pets do
    resources :bookings, only:[:create]
  end
  get "/profile", to: "users#profile"
end
