TonyBlog::Application.routes.draw do
  root :to => 'pages#welcome' #homepage
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
  
  post "contacts" => 'contacts#create' 
  put "contacts/:id" => 'contacts#update'

  get "contacts/:id/delete" => 'contacts#delete'
  
#------------------------------------------------------------------------------------------------------------------------------

  get "articles" => 'articles#index', :as => "articles"
  get "articles/new" => 'articles#new', :as => "new_article"

  get "articles/:id" => 'articles#show', :as => "article"
  get "articles/:id/edit" => 'articles#edit', :as => "edit_article"

  post "articles" => 'articles#create' 
  put "articles/:id" => 'articles#update'

  get "articles/:id/delete" => 'articles#delete'

  
    
  
  
end
