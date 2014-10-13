Rails.application.routes.draw do
  root 'home#index'
  get 'company', to: 'company#index'
  get 'jobs', to: 'jobs#index'
  get 'vacancy', to: 'vacancy#index'
  get 'done', to: 'done#index'
  get 'contacts', to: 'contacts#index'
  post 'contacts', to: 'contacts#mail'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
