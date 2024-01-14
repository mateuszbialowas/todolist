# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    resources :items do
      resource :undo, only: %i[create], module: :items, controller: :undo
    end
  end

  get 'static_pages/home'
  get 'up' => 'rails/health#show', as: :rails_health_check
  root to: 'items#index'
end
