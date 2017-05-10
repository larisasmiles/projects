require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if head.nil?
      @head = Node.new(data)
    end
    data
  end

  def next_node
    head.nil?
    @head = head.next_node
  end

end
