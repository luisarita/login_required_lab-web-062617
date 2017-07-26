Rails.application.routes.draw do
  get '/show', to: 'secrets#show'
  get '/login', to: 'sessions#new', as: 'login'
  post '/session', to: 'sessions#create'
  delete '/session', to: 'sessions#destroy'
  #post '/logout' => 'sessions#destroy'
end
