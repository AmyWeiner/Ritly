RitlyApp::Application.routes.draw do

  resources  :users, :sessions	

  get '/signup', to: 'users#new'

  delete '/signout', to: 'sessions#destroy'

  get'/signin', to: 'sessions#new'
  
  root to: 'links#index'

  get '/go', to: 'links#index'

  post '/go', to: 'links#create'

  get '/go/:random_string/preview', to: 'links#show', as: 'link_preview'

  get 'go/:random_string', to: 'links#redirect', as: 'link'

end
