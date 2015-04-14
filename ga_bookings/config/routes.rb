Rails.application.routes.draw do

  resources :cohorts

  devise_for :users
  resources :users, only:[:index, :show]
  resources :course_types, only:[:index, :show]

  root "users#index"
end
