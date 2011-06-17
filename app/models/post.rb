class Post < ActiveRecord::Base
 validates_presence_of :location, :date
 
 has_many :nodes
end
