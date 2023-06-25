require 'rspec'
require_relative '../genre'
require_relative '../item'

describe Genre do
  context 'create instance of Genre' do
    genre = Genre.new('Genre')
    it 'should be a kind of Genre' do
      expect(genre).to be_a_kind_of Genre
    end
    it 'should have a name' do
      expect(genre.name).to eql 'Genre'
    end
    it 'should have an id' do
      expect(genre.id).to be_an_instance_of Integer
    end
    it 'should have an empty array of items' do
      expect(genre.items).to be_an_instance_of Array
      expect(genre.items).to be_empty
    end
  end
  context 'add item to genre' do
    genre = Genre.new('Genre')
    item = Item.new('2021-06-24', false)
    genre.add_item(item)
    it 'should add item to genre' do
      expect(genre.items).to include item
    end
    it 'should add genre to item' do
      expect(item.genre).to eql genre
    end
  end
end
