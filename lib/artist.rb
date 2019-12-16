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

    def songs
        Song.all
    end

    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
        
    end

    def genres
        # binding.pry
        Genre.all.select { |genre| genre.name }
    end


end