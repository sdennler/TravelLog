module PostsHelper

 def show_title_for post
  (post.title.nil? or post.title.empty?) ? '' : ' - ' + post.title
 end

end
