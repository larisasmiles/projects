require_relative './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
    @string = ""
  end

  def append(data)
    if head.nil?
      @head = Node.new(data)
    else
      current = @head
    until current.next_node.nil?
      current = current.next_node
    end
      current.next_node = Node.new(data)
    end
  end

  def count
    if @head.nil
      counter = 0
    else
      counter = 1
      current = @head
      until current.next_node.nil?
        current = current.next_node
        counter += 1
      end
    end
    counter
  end


  def to_string
    current = @head
    beats = []
    until current.next_node.nil?
      current = current.next_node
      beats << current.data
    end
  end
end
