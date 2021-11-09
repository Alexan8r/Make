# frozen_string_literal: true

Rails.application.routes.draw do
  resources :devices
  resources :events
  get 'tables/index'
  get 'home/index'
  root to: 'home#index'
end
