require 'pry'

class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self }
  end

  def self.find_or_create_by_name(name)

  end

  def print_songs
    puts songs.map(&:song)
    binding.pry
  end


end
