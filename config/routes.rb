Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  localized do
    devise_for :users

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'homepage#index'

    resources :listings
  end
  #apipie
end
