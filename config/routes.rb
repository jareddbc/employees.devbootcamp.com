Rails.application.routes.draw do

  resources :employees, path: '/'

  root to: 'homepage#show'

end
