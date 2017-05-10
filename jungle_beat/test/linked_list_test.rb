require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

require "pry"

class LinkedListTest < Minitest::Test

def test_if_linked_list_exists
  list = LinkedList.new
  assert_instance_of LinkedList, list
end

def test_if_head_equals_nil
  list = LinkedList.new
  assert_equal nil, list.head
end

def test_if_it_appends
  list = LinkedList.new
  assert_equal "doop", list.append("doop")
end

def test_if_head_is_next_node
  list = LinkedList.new
  assert_equal nil, list.head.next_node
  binding.pry
end



end
