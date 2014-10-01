Rails.application.routes.draw do
  root 'home#index'
  get 'company', to: 'company#index'
  get 'jobs', to: 'jobs#index'
end
