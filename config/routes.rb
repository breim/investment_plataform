Rails.application.routes.draw do
 
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :projects, path: :startups do
  	resources :investments, path: :investimentos
  end

  devise_for :users
  root 'pages#index'
end