require 'rspec'
require_relative '../music_album'

describe MusicAlbum do
  context 'create instance of MusicAlbum' do
    music_album = MusicAlbum.new(1, '2023-06-24', true)
    it 'should be a kind of MusicAlbum' do
      expect(music_album).to be_a_kind_of MusicAlbum
    end
    it 'should have an id' do
      expect(music_album.id).to be_an_instance_of Integer
    end
    it 'should have a publish_date' do
      expect(music_album.publish_date).to eql '2023-06-24'
    end
    it 'should have a on_spotify' do
      expect(music_album.on_spotify).to eql true
    end
  end
end
