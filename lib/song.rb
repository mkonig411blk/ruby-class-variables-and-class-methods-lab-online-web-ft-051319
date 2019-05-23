class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artists_count = {}
  
def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end

def self.count 
  @@count
end

def genres
  @@genres
end

def self.artists
  @@artists
end

def self.genre_count
  @@genres.each do |genre|
    @@genres_count[genre] = @@genres.count[genre]
  end
  @@genres_count
end

end
