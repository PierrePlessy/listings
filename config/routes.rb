Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  localized do
    devise_for :users

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'homepage#index'

    resources :listings
    resources :pages, only: [:show]

    post '/listings/contact', to: 'listings#contact', as: 'listing_contact'

    namespace :account do
      resources :user, only: [:index, :update]
      resources :contacts , only: [:index]
      resources :messages, only: [:index]
    end

  end
  #apipie
end
