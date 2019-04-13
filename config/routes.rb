Rails.application.routes.draw do
  root 'welcome#index'
  get '/search_result', to: 'search#index'
end
