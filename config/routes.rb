Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes do
    resources :bookings, only: [:index, :create, :new, :edit, :show, :destroy, :update]
  end
end
