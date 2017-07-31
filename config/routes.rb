# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'projects/:project_id/summary', to: 'summaries#show', as: 'project_summary'
get 'summaries', to: 'summaries#index'

# get 'summaries/:project_id.name', to: 'summaries#new'
# get 'summaries/:id/new', to: 'summaries#new'
# post 'summaries', to: 'summaries#create'

resources :projects do 
	resources :summaries, only: [:show, :edit, :update, :destroy, :new, :create]
end
