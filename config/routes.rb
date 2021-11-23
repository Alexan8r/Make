# frozen_string_literal: true

Rails.application.routes.draw do
  resources :devices
  resources :events
  namespace :api, defaults: { format: :json } do
    resources :devices
    resources :events
  end
  get 'tables/index'
  get 'home/index'
  root to: 'devices#index'
end
