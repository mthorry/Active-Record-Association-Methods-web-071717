class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # binding.pry
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.songs.select {|song| song.artist}.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    self.songs.map {|song| song.artist.name}
    # binding.pry
  end
end
