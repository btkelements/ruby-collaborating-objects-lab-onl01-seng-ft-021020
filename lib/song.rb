class Song 
  attr_accessor :name, :artist 
  @@all = [] 
  def initialize(name, artist = nil)
    @name = name 
    @artist = artist 
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

  def self.new_by_filename(file_name)
    new_song = Song.new(file_name.split(" - ")[1])
    new_song.artist = Artist.new(file_name.split(" - ")[0]) 
    new_song 
  end 

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end 

end  