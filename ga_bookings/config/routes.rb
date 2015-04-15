Rails.application.routes.draw do

  resources :classrooms do
	  resources :bookings
	end
  resources :cohorts
  resources :course_types

  devise_for :users
  resources :users, only:[:index, :show]

  root "cohorts#index"
end
