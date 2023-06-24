require 'rspec'
require_relative '../author'


describe Author do
  context 'when testing the Author class' do
    author = Author.new('First', 'Last')

    it 'should be a kind of Author' do
      expect(author).to be_a_kind_of Author
    end
    it 'should have a first_name' do
      expect(author.first_name).to eql 'First'
    end
    it 'should have a last_name' do
      expect(author.last_name).to eql 'Last'
    end
    it 'should have an id' do
      expect(author.id).to be_an_instance_of Integer
    end
    it 'should have an items array' do
      expect(author.items).to be_an_instance_of Array
    end
    it 'should have an add_item method' do
      expect(author).to respond_to(:add_item)
    end
    it 'should have a to_h method' do
      expect(author).to respond_to(:to_h)
    end
  end
end
