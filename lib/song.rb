require 'pry'

class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.uniq.each do |a_genre|
      temp_genre_count = 0
      @@genres.each do |g|
        if a_genre == g
          temp_genre_count += 1
        end
      end
      genre_hash[a_genre] = temp_genre_count
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.uniq.each do |an_artist|
      temp_artist_count = 0
      @@artists.each do |a|
        if an_artist == a
          temp_artist_count += 1
        end
      end
      artist_hash[an_artist] = temp_artist_count
    end
    artist_hash
  end

end
