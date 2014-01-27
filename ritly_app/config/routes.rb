RitlyApp::Application.routes.draw do
  
  root to: 'links#index'

  get '/go', to: 'links#index'

  post '/go', to: 'links#create'

  get 'go/:id', to: 'links#redirect'

  get '/go/:random_string/preview', to: 'links#show', as: 'link'

end
