require 'rspec'

require_relative '../book'

describe Book do
  before :each do
    @book = Book.new('Title', 'Publisher', 'Good', '2023-06-24', true)
  end
  describe '#new' do
    it 'takes five parameters and returns a Book object' do
      @book.should be_an_instance_of Book
    end
    it 'should be a kind of Thing' do
      @book.should be_a_kind_of Item
    end
  end
  describe '#title' do
    it 'returns the correct title' do
      @book.title.should eql 'Title'
    end
  end
  describe '#publisher' do
    it 'returns the correct publisher' do
      @book.publisher.should eql 'Publisher'
    end
  end
  describe '#cover_state' do
    it 'returns the correct cover_state' do
      @book.cover_state.should eql 'Good'
    end
  end
  describe '#can_be_archived?' do
    it "returns true if the cover_state is 'bad'" do
      @book.cover_state = 'bad'
      @book.can_be_archived?.should eql true
    end
    it "returns false if the cover_state is 'good'" do
      @book.cover_state = 'good'
      @book.can_be_archived?.should eql false
    end
  end
end
