class LinkedList
  def initialize
    @root = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    @size += 1
    newNode = Node.new(value)
    if @root.nil?
      @root = newNode
      @tail = newNode
      return
    end
    @tail.next_node = newNode
    @tail = newNode
    return
  end

  def prepend(value)
    @size += 1
    newNode = Node.new(value)
    if @root.nil?
      @root = newNode
      @tail = newNode
      return
    end
    newNode.next_node = @root
    @root = newNode
    return
  end

  def size
    return @size
  end

  def head
    return @root
  end

  def tail
    return @tail
  end

  def at(index)
    ans = @root
    for i in 0...index do
      ans = ans.next_node || nil
    end
    return ans
  end

  def pop
    if @root == @tail
      @root = nil
      @tail = nil
      return
    end
    target = @root
    while target.next_node != @tail
      target = target.next_node
    end
    target.next_node = nil
    @tail = target
    return
  end

  def contains?(value)
    space = @root
    while !space.nil?
      if space.value == value
        return true
      end
      space = space.next_node
    end
    return false
  end

  def find(value)
    ans = @root
    i = 0
    while !ans.nil? && ans.value != value
      ans = ans.next_node || nil
      i += 1
    end
    if ans.nil?
      return ans
    end
    return i
  end

  def to_s
    ans = ""
    toPrint = @root
    while !toPrint.nil?
      ans += "( #{toPrint.value} ) -> "
      toPrint = toPrint.next_node
    end
    ans += "nil"
    return ans
  end

  def insert_at(value, index)
    before = @root
    for i in 1...index do
      before = before.next_node
    end
    newNode = Node.new(value)
    newNode.next_node = before.next_node
    before.next_node = newNode
  end

  def remove_at(index)
    if index == 0
      @root = @root.next_node
      if @root.nil?
        @tail = nil
      end
      return
    end
    before = @root
    for i in 1...index do
      before = before.next_node
    end
    before.next_node = before.next_node.next_node
    return
  end
end

class Node
  attr_accessor :value, :next_node
  def initialize(value=nil, next_node=nil)
    @value = value
    @next_node = next_node
  end
end