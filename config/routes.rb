Rails.application.routes.draw do
  get 'pages_controller/index'

  resources :travel_expenses
  resources :bills
  root to: 'pages_controller#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
