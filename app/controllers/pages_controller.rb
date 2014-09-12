class PagesController < ApplicationController
  skip_before_filter :authorize, :only => [:welcome, :profile]
  
  
  def welcome
  end
  
  def profile
  end
end
