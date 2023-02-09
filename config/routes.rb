Rails.application.routes.draw do



  get 'muscles/men5' => 'muscles#men5'
  get 'muscles/men6' => 'muscles#men6'
  get 'muscles/women5' => 'muscles#women5'
  get 'muscles/women6' => 'muscles#women6'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  root 'tests#index'

  resources :muscles do
    resources :comments, only: [:create]
  end

  resources :tests

  
end
