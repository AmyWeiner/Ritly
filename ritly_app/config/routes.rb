RitlyApp::Application.routes.draw do
  
  root to: 'links#index'

  get '/go', to: 'links#index'

  post '/go', to: 'links#create'

  get '/go/:random_string/preview', to: 'links#show', as: 'link_preview'

  get 'go/:random_string', to: 'links#redirect', as: 'link'

end
