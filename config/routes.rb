Rails.application.routes.draw do
 get '/about' => 'pages#about'
  get '/home' => 'pages#home'
  root 'pages#home'
end
