# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "books#index"

  scope path: ":locale" do
    resources :books
  end
end
