Rails.application.routes.draw do

  get  '/all',    to: 'employees#index'
  get  '/search', to: 'employees#search'
  post '/create', to: 'employees#create'
  resources :employees, path: '/', except: [:index, :create]

  root to: 'homepage#show'

end
