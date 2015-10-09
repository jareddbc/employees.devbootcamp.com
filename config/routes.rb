Rails.application.routes.draw do

  namespace 'api' do
    resources 'employees'
  end

  get  '*path',  to: 'client_app#show'
  root           to: 'client_app#show'

end
