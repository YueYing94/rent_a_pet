Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :pets do
    collection do
      get :search
    end
  end
end
