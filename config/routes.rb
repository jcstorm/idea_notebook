Rails.application.routes.draw do
  #create
  get '/new_idea' => 'ideas#new'
  get '/create_idea' => 'ideas#create'
  
  #read
  get '/ideas/:id' => 'ideas#show'
  get '/ideas' => 'ideas#index'
  
  #update
  get '/ideas/:id/edit' => 'ideas#edit'
  get '/ideas/:id/update' => 'ideas#update'
 
  #destroy
  get '/ideas/:id/destroy' => 'ideas#destroy'
end
