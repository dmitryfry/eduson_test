Rails.application.routes.draw do

  devise_for :users

  root to: "home#index"

  post '/create' => "home#create"
end
