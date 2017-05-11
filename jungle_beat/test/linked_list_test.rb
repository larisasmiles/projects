require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require "pry"

class LinkedListTest < Minitest::Test

  def test_if_linked_list_exists
  list = LinkedList.new
  assert list, LinkedList.new
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
  list.append ("doop")

  assert_equal 1, list.count
  end

  def test_if_it_appends_mulitple_beats
  list = LinkedList.new
  list.append("deep")
  list.append("doop")

  assert_equal "deep", list.head.data
  assert_equal "doop", list.head.next_node.data
  end

  def test_if_to_string_works
  list = LinkedList.new
  list.append("doop")
  list.append("deep")

  assert_equal "doop deep", list.to_string
  end

  def test_add_a_beat_to_the_beginning
      list = LinkedList.new
      list.append("plop")
      list.append("suu")

      assert_equal "dup", list.prepend("dup")
      assert_equal "dup plop suu", list.to_string
  end

  # def test_if_it_inserts
  #   list = LinkedList.new
  # end



end
