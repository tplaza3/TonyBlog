class ContactsController < ApplicationController
  
  skip_before_filter :authorize, :only => [:index, :show]
  
  def index
    @contacts = Contact.all
  end
  
  
  def new
    @contact = Contact.new
  
  end
  
  def create
    @contact = Contact.new(params[:contact])
    
    if @contact.save
      redirect_to contacts_path
    else
      render "new"
    end
  end
  
  def show
    @contact = Contact.find(params[:id])
  end
  
  def edit
    @contact = Contact.find(params[:id])
  end
  
  def update
    @contacts = Contact.all
    @contact = Contact.find(params[:id])
    
      if @contact.update_attributes(params[:contact])
        redirect_to contacts_path
      else
      end  
  end
  
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    
    redirect_to contacts_path
  end






end

