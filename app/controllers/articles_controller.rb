class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  
  def new
    @article = Article.new
  
  end
  
  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to articles_path
    else
      render "new"
    end
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def edit
    @article = Article.find(params[:id])
    
  
  end
  
  def update
    @articles = Article.all
    @article = Article.find(params[:id])
      if @article.update_attributes(params[:article])
        redirect_to articles_path
      else
      end 
  end


  
end
