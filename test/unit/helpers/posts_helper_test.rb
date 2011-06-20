require 'test_helper'

class PostsHelperTest < ActionView::TestCase

 test "show_title_for should give hypen and the title" do
  assert_equal ' - '+posts(:whit_title).title, show_title_for(posts(:whit_title))
 end

 test "show_title_for should give empty string" do
  assert_equal '', show_title_for(posts(:only_location))
 end

end
