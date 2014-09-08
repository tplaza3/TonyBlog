TonyBlog::Application.routes.draw do
  get "welcome" => 'pages#welcome', :as => "welcome"
  get "profile" => 'pages#profile', :as => "profile"
  
  get "class_projects" => 'class_projects#index', :as => "class_projects"
  get "class_projects/new" => 'class_projects#new', :as => "new_class_project"
  post "class_projects" => 'class_projects#create' 
  get "class_projects/:id" => 'class_projects#show', :as => "class_project"
end
