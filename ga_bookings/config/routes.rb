Rails.application.routes.draw do
  resources :cohorts

  devise_for :users
  resources :users, only:[:index, :show]

  root "cohorts#index"
end
