class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
    song = MP3Importer.new(file_name)
    song.artist = file_name.split(" - ")[1]
    song
  end

  def artist_name=(name)

  end

end
