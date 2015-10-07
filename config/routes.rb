Rails.application.routes.draw do

  get 'homepage/show'

  root to: 'homepage#show'

end
