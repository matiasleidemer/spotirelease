Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    get 'login',  to: 'devise/sessions#new'
    get 'logout', to: 'devise/sessions#destroy'
  end
end
