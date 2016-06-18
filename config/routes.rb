Rails.application.routes.draw do
  resources :owners
  resources :holdings
  resources :issues
end
