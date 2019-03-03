Rails.application.routes.draw do
  #root 'static_owners#home'
  #get '/about', to: 'static_owners#about'
  root 'owners#index'

  resources :owners

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
