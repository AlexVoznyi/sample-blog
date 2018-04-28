Rails.application.routes.draw do
  get 'home/contacts'
  get 'home/index'
  post 'home/contacts'
  post 'home/index'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
