# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'summaries', to: 'summaries#index'
get 'summaries/:id', to: 'summaries#show'
get 'summaries/:id/new', to: 'summaries#new'
post 'summaries', to: 'summaries#create'

resources :notes