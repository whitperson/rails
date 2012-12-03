class Que
  def initialize
    @data = []
  end

  def enqueue(value)
    @data[@data.count] = value
  end

  def dequeue
    @data.delete(@data[-1])
  end

  def to_s
    "There are #{@data.length} items in this stack"
  end
end
