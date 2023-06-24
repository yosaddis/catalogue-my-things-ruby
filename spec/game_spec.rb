require 'rspec'
require_relative '../game'

describe Game do
  context 'create instance of Game' do
    game = Game.new('Player', '2023-06-24')
    it 'should be a kind of Game' do
      expect(game).to be_a_kind_of Game
    end
    it 'should be a kind of Item' do
      expect(game).to be_a_kind_of Item
    end
    it 'should have a player' do
      expect(game.multiplayer).to eql 'Player'
    end
    it 'should have a last_played_at' do
      expect(game.last_played_at).to eql '2023-06-24'
    end
    it 'should have an id' do
      expect(game.id).to be_an_instance_of Integer
    end
  end
end
