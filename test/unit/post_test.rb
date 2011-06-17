require 'test_helper'

class PostTest < ActiveSupport::TestCase

 test 'should only save post with location and date present' do
  post = Post.new
  assert !post.save, 'Saved the post without any thing'
  post.location = 'Testhausen'
  assert !post.save, 'Saved the post without date'
  post = Post.new
  post.date = '2011-06-17'
  assert !post.save, 'Saved the post without location'
  post.location = 'Testhausen'
  assert post.save, 'Could not save the post whit location and date'
 end

end
