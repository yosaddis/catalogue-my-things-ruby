require 'rspec'
require_relative '../label'

describe Label do
  context 'create instance of Label' do
    label = Label.new('Label', 'Yellow')
    it 'should be a kind of Label' do
      expect(label).to be_a_kind_of Label
    end
    it 'should have a name' do
      expect(label.title).to eql 'Label'
    end
    it 'should have an id' do
      expect(label.id).to be_an_instance_of Integer
    end
    it 'should have an empty array of items' do
      expect(label.items).to be_an_instance_of Array
      expect(label.items).to be_empty
    end
  end
  context 'add item to label' do
    label = Label.new('Label', 'Yellow')
    item = Item.new('2021-06-24', false)
    label.add_item(item)
    it 'should add item to label' do
      expect(label.items).to include item
    end
    it 'should add label to item' do
      expect(item.label).to eql label
    end
  end
end
