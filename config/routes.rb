Rails.application.routes.draw do
  root to: 'static_pages#home'
  resources :users
  get '/tellme', to: 'static_pages#tellme'
  get '/oauth/connect', to: 'oauth#connect'
  get '/oauth/callback', to: 'oauth#callback'
  get '/dashboard', to: 'users#dashboard'
  get '/tilt', to: 'businesses#tilt'
  get '/lolo', to: 'businesses#lolo'
  get '/jakekaad', to: 'users#jakekaad'
  get 'reset', to: 'users#reset'
end
