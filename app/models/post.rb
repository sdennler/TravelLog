class Post < ActiveRecord::Base
 validates_presence_of :location, :date
 
 has_many :nodes
 
 def Post.search query = nil
  if query == nil
   Post.order('date DESC').all
  else
   Post.where('title LIKE :query OR location LIKE :query OR content LIKE :query', {:query => '%'+query+'%'}).order('date DESC').all
  end
 end
  
end
