Rails.application.routes.draw do
  get 'albums/new'
  get 'albums/create'
  get 'albums/edit'
  get 'albums/show'
  get 'albums/update'
  get 'albums/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :new, :show]
  resource :session, only: [:create, :new, :destroy]
  resources :bands do
    resources :albums, only: [:new]
  end
  resources :albums, only: [:show, :create, :edit, :update, :destroy]
end
