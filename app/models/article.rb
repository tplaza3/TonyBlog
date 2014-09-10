class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  
  validates :title, :presence => true
  validates :body, :presence => true
  validates :draft, :presence => true
  
  # add an instance method called excerpt, which returns only the first 30 characters of the article's body.
  
  def excerpt(id)
    @article = Article.find(id)
    excpt = @article.body.slice(0..30)
    excpt
  end
  
# add an instance method called relative_length, which returns either "short", "medium", or "long" respectively if the article body's length is 50 characters, 100 characters, or 300 characters.
  def relative_length(id)
    @article = Article.find(id)
    char = @article.body.length
    
    if char <= 50
      return "short"
    elsif char > 50 && char <=100
      return "medium"
    elsif char > 100 && char <=100
      return "long"
    else
      return "not sure what is goin on!"
    end
  end
end
