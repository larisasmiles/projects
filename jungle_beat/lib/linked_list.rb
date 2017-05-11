require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
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
    data
  end

  def count
    if @head.nil?
      counter = 0
    else
      counter = 1
      current = @head
      until current.next_node.nil?
        current = current.next_node
        counter += 1
      end
      counter
    end
  end


  def to_string
    current = @head
    beats = []
    beats << @head.data
    until current.next_node.nil?
      current = current.next_node
      beats << current.data
    end
    beats.join(" ")
  end
end
