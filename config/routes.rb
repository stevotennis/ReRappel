Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get 'static_pages/landing_page'

  get 'static_pages/thank_you'

  post 'static_pages/thank_you'

  # devise_for :users, skip: [:sessions]
  #   as :user do
  #   get 'signin', to: 'devise/sessions#new', as: :new_user_session
  #   post 'signin', to: 'devise/sessions#create', as: :user_session
  #   delete 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
  # end

  devise_scope :user do
	delete 'logout', to: 'devise/sessions#destroy'
  end

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'static_pages#index'

  root 'static_pages#landing_page'

  resources :orders, only: [:index, :show, :create, :destroy]

end
