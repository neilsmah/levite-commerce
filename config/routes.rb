Rails.application.routes.draw do
  resources :shirts
  root "shirts#index"  
end
