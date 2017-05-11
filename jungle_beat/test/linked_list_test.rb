require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require_relative './lib/node'

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

def test_if_next_node_is_nil
  list = LinkedList.new
  assert_equal nil, list.head
end

def test_if_it_counts
  list = LinkedList.new
  assert_equal 1, list.count
end

def test_if_to_string_works
  list = LinkedList.new
  list.append("doop")
  assert_equal "doop", list.to_string
end

def test_if_it_appends_deep
  list = LinkedList.new
  list.append("deep")
  assert_equal "deep", list.append("deep")

end
binding.pry
end
