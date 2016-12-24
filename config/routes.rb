Rails.application.routes.draw do
  resources :friendships
  root 'welcome#home'

  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
