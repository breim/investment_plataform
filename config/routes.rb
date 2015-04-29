Rails.application.routes.draw do
  resources :investments
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :projects, path: :startups
  devise_for :users
  root 'pages#index'
end