# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  root to: "books#index"

  scope module: :users do
    resources :users, only: [:index, :show, :edit, :update], controller: :profiles
  end
  resources :books
end
