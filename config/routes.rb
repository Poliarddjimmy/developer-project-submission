Rails.application.routes.draw do
  resources :videos
  resources :users
  root to: 'videos#index'
  delete '/signout' => 'users#destroySession'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
