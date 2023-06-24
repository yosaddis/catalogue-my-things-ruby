require 'date'

class Item
  attr_accessor :publish_date, :genre, :label
  attr_reader :id, :archived, :author

  def initialize(publish_date, archived, id = nil)
    @id = id || rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

end