require 'test_helper'

class NodeTest < ActiveSupport::TestCase

 test 'should only save node with name and coordinates present' do
  node = Node.new
  assert !node.save, 'Saved the Node without any thing'
  node.name = 'Testhausen'
  assert !node.save, 'Saved the Node without name'
  node = Node.new
  node.lat = 8.087912
  node.lon = 77.535916
  assert !node.save, 'Saved the Node wit just coordinates'
  node.name = 'Testhausen'
  assert node.save, 'Could not save the Node whit name and coordinates'
 end

end
