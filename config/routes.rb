Rails.application.routes.draw do
  resources :contacts
  get '/about' => 'pages#about'
  get '/home' => 'pages#home'
  root 'pages#home'
end
