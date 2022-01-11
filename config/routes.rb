Rails.application.routes.draw do
  namespace :api do
    resources :meals
    resources :users
    resources :days
    resources :carbs
  end
end
