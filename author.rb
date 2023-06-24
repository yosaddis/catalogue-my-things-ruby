class Author
  attr_accessor :id, :first_name, :last_name, :items

  def initialize(first_name, last_name, id = nil)
    @id = id || rand(1..1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end

  def to_h
    { id: @id,
      first_name: @first_name,
      last_name: @last_name }
  end
end
