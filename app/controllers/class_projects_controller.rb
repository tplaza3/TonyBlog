class ClassProjectsController < ApplicationController
  def index
    @class_projects = ClassProject.all
  end
    
  def new
    @class_project = ClassProject.new
  end
  
  def create
    
    @class_project = ClassProject.new(params[:class_project])
    
    if @class_project.save
        redirect_to class_projects_path # The "index" action.
      
        # "Redirecting" means a **new request** is created. It is creating
        # a new request to the users_path.
    else
        # 1. Re-show the form.
        # 2. Display relevant errors.
      
        # Override the default view that would be loaded:
      render "new" # Refers to /app/views/users/new
    end
  end
    
  def edit
    @class_project = ClassProject.find(params[:id])
  end
  
  def update
    @class_projects = ClassProject.all
    @class_project = ClassProject.find(params[:id])
    
    if @class_project.update_attributes(params[:class_project])
      redirect_to class_projects_path
    else
    end
    
  end  
  
  def delete
    ClassProject.find(params[:id]).delete
    redirect_to class_projects_path
  end
  
  def show
    @class_project = ClassProject.find(params[:id])
  end
  
  
  
end
