Rails.application.routes.draw do
  resources :projects, path: :startups
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :users
  root 'pages#index'
end