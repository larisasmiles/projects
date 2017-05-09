require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require "pry"

class NodeTest < Minitest::Test

  def test_if_node_exists
    node = Node.new("plop")
    assert_instance_of Node, node
  end

  def test_if_node_plops
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_if_next_node_is_nil
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end
end
