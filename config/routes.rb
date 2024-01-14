# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    resources :items
  end

  get 'static_pages/home'
  get 'up' => 'rails/health#show', as: :rails_health_check
  root to: 'items#index'
end
