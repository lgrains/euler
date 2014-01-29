require "set"

class Node
  attr_accessor :name, :adjacents, :parents, :visited

  def initialize(name)
    @adjacents = Set.new
    @parents = Set.new
    @name = name
    @visited=0
  end

  def to_s
    @name
  end

  def name?
    @name
  end
end