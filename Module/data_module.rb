require 'json'
require_relative '../book'

module DataModule
  def read_books
    file = './Data/books.json'
    data = []

    if File.exist?(file) && !File.empty?(file)
      JSON.parse(File.read(file)).each do |book|
        data.push(Book.new(book['title'], book['publisher'], book['cover_state'],
                           book['publish_date'], book['archived'], book['id']))
      end
    end
    data
  end

  def write_books(books)
    data = []
    books.each do |book|
      data.push({ id: book.id, title: book.title, publisher: book.publisher,
                  cover_state: book.cover_state, publish_date: book.publish_date, archived: book.archived })
    end
    File.write('./Data/books.json', JSON.pretty_generate(data))
  end

  def read_labels
    file = './Data/labels.json'
    data = []

    if File.exist?(file) && !File.empty?(file)
      JSON.parse(File.read(file)).each do |label|
        data.push(Label.new(label['title'], label['color'], label['id']))
      end
    end
    data
  end

  def write_labels(labels)
    data = []
    labels.each do |label|
      data.push({ id: label.id, title: label.title, color: label.color })
    end
    File.write('./Data/labels.json', JSON.pretty_generate(data))
  end

  def album_to_hash(album)
    {
      id: album.id,
      publish_date: album.publish_date,
      on_spotify: album.on_spotify
    }
  end
end
