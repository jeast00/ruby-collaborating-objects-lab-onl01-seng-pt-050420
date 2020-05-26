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
    artist_file_name = file_name.split(" - ")[0]
  end

  def artist_name=(name)

  end

end
