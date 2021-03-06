class ArticlesController < ApplicationController
  
  skip_before_filter :authorize, :only => [:index, :show]
  
  def index
    @articles = Article.all
  end
  
  
  def new
    @article = Article.new
  
  end
  
  def create
    @article = Article.new(params[:article])
    
    if @article.save
      redirect_to articles_path, :notice => "Saved a new article! You feel that? That's a pat on the back!"
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
  
  def like
    # @article = Article.find(params[:id])
#     # @like = Like.new

    @article = Article.find(params[:id])
     
    Like.create({"article_id" => @article.id, "ip_address" => "tony"})
    redirect_to articles_path
    
  end
  
  def update
    @articles = Article.all
    @article = Article.find(params[:id])
    
    if @article.update_attributes(params[:article])
      redirect_to articles_path
    else
    end 
    
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    redirect_to articles_path
  end
    
  
end
