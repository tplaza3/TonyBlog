TonyBlog::Application.routes.draw do
  get "welcome" => 'pages#welcome', :as => "welcome"
  get "profile" => 'pages#profile', :as => "profile"
  
#------------------------------------------------------------------------------------------------------------------------------
  
  get "class_projects" => 'class_projects#index', :as => "class_projects"
  get "class_projects/:id" => 'class_projects#show', :as => "class_project"
  
  get "class_projects/new" => 'class_projects#new', :as => "new_class_project"
  get "class_projects/:id/edit" => 'class_projects#edit', :as => "edit_class_project"
  
  post "class_projects" => 'class_projects#create' 
  put "class_projects/:id" => 'class_projects#update'

  get "class_projects/:id/delete" => 'class_projects#delete'
  
#------------------------------------------------------------------------------------------------------------------------------
  
  get "contacts" => 'contacts#index', :as => "contacts"
  get "contacts/new" => 'contacts#new', :as => "new_contact"
  
  get "contacts/:id" => 'contacts#show', :as => "contact"
  get "contacts/:id/edit" => 'contacts#edit', :as => "edit_contact"
  
  put "contacts/:id" => 'contacts#update'
  post "contacts" => 'contacts#create' 
  
  
  
  
  
  
  
  
  
end
