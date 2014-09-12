TonyBlog::Application.routes.draw do
  root :to => 'pages#welcome' #homepages
  get "profile" => 'pages#profile', :as => "profile"
  
#------------------------------------------------------------------------------------------------------------------------------
  
  get "class_projects" => 'class_projects#index', :as => "class_projects"
  get "class_projects/new" => 'class_projects#new', :as => "new_class_project"
  
  get "class_projects/:id" => 'class_projects#show', :as => "class_project"
  get "class_projects/:id/edit" => 'class_projects#edit', :as => "edit_class_project"
  
  post "class_projects" => 'class_projects#create' 
  put "class_projects/:id" => 'class_projects#update'
  
  delete "class_projects/:id/delete" => 'class_projects#destroy', :as => "delete_class_project"


  
#------------------------------------------------------------------------------------------------------------------------------
  
  get "contacts" => 'contacts#index', :as => "contacts"
  get "contacts/new" => 'contacts#new', :as => "new_contact"
  
  get "contacts/:id" => 'contacts#show', :as => "contact"
  get "contacts/:id/edit" => 'contacts#edit', :as => "edit_contact"
  
  post "contacts" => 'contacts#create' 
  put "contacts/:id" => 'contacts#update'
  
  delete "contacts/:id/delete" => 'contacts#destroy', :as => "delete_contact"


  
#------------------------------------------------------------------------------------------------------------------------------

  get "articles" => 'articles#index', :as => "articles"
  get "articles/new" => 'articles#new', :as => "new_article"

  get "articles/:id" => 'articles#show', :as => "article"
  get "articles/:id/edit" => 'articles#edit', :as => "edit_article"

  post "articles" => 'articles#create' 
  put "articles/:id" => 'articles#update'
  
  delete "articles/:id/delete" => 'articles#destroy', :as => "delete_article"
  post "articles/like" => 'articles#like', :as => "like_article"
  #:article_id
#------------------------------------------------------------------------------------------------------------------------------
  
  
  post "create_user" => 'users#create', :as => "create_user"
  get "signup" => 'users#new', :as => "signup"
  
  get "login" => 'logins#new', :as => "login"
  post "login" => 'logins#create', :as => "create_login"
  
  get "logout" => 'logins#destroy', :as => "logout"
  
  
    
  
  
end
