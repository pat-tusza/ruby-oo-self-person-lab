require 'pry'


class Song

    @@all = []
  
    attr_accessor :name
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end

    def self.print_all_song_names
        Song.all.select {|song| }
    end

  end 

  ninety_nine_problems = Song.new("99 Problems")
  thriller = Song.new("Thriller")

  binding.pry