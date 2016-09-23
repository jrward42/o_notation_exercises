class MyQueue
  def initialize
    @store = []
  end

  def enqueue(element)
    @store << element
  end

  def dequeue
    @store.shift
  end

  def peek
    @store.first
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

end

class MyStack

  attr_accessor :store



  def initialize(array = [])
    @store = array
    @max = 0
  end

  def pop
    @store.pop
  end

  def push(element)
    @store.push(element)
    @max = element if element > @max
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

  def max
    @store.max
  end


end

class StackQueue

  def initialize(evaluator, store)
    @evaluator = evaluator
    @store =  store
  end

  def enqueue
    @evaluator.push(@store.pop)
  end

  def dequeue(replace = false)
    if replace
      @store.push(@evaluator.pop)
    else
      @evaluator.pop
    end
  end

  def size
    @store.length + @evaluator.length
  end

  def empty?
    @store.empty?
  end


end
