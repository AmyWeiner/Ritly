RitlyApp::Application.routes.draw do
  
  root to: 'links#index'

  get '/go', to: 'links#index'

  post '/go', to: 'links#create'

  get '/go/:id/preview', to: 'links#show', as: 'link'
end
