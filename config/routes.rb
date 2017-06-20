Rails.application.routes.draw do
  root to: 'home#index'

  resources :users

  namespace :deeplink do
    resources :users, only: [:show]
    get "/users/:sex/:id", to: "users#show", as: "user_sex", sex: /men|women/
  end
end
