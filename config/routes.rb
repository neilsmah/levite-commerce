Rails.application.routes.draw do
  devise_for :users
  resources :shirts
  root "shirts#index"  
end
