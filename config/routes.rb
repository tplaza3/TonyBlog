TonyBlog::Application.routes.draw do
  get "welcome" => 'pages#welcome', :as => "welcome"
  get "profile" => 'pages#profile', :as => "profile"
  
end
