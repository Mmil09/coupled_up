CoupledUp::Application.routes.draw do
  devise_for :users
  root to: 'pages#show', :id => 'home'
  #resources :users, only: [:new, :create]
end
