Rails.application.routes.draw do
  
  get 'home/index'

  get 'terms' => 'home#terms'
  get 'about' => 'home#about'

  resource :contacts, only: [:new, :create], path_names: {:new => ''} 
  resources :articles do
    resources :comments, only: :create
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
