SampleApp::Application.routes.draw do

  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'

  resources :users
  match '/signup',  to: 'users#new'

  resources :sessions, only: [:create, :new, :destroy]
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy'

  root :to => 'static_pages#home'

end
