require_relative 'item'

class Label
  attr_accessor :title, :color, :id, :items

  def initialize(title, color, id = nil)
    @id = id || rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    return unless item.instance_of?(Item) && !@items.include?(item)

    @items << item
    item.add_label = self
  end
end
