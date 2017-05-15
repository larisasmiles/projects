require './lib/node'

class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = head
    @string = ""
  end

  def append(data)
    current = @head
    if head == nil
      @head = Node.new(data)
      @head.data
    else
      until current.next_node == nil
      current = current.next_node
      end
      current.next_node = Node.new(data)
    end
    data
  end

  def count
    counter = 1
    current = @head
    until current.next_node == nil
      counter += 1
      current = current.next_node
    end
    counter
  end

  def to_string
    beats = " "
    current = @head
    beats = current.data
    until current.next_node == nil
      current = current.next_node
      beats += ' ' + current.data
    end
    beats
  end

  def prepend(data)
    current = Node.new(data)
    current.next_node = @head
    @head = current
    data
  end

  # def insert
  #   beats = " "

end
