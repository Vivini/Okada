Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bikes do
    resources :bookings, only: [:index, :create, :new, :edit, :show, :destroy, :update]
  end
end
