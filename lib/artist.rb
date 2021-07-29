class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |s| s.artist == self }
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        all_genres = []

        Song.all.each do |s|
            if s.artist == self
                all_genres << s.genre
            end
        end
        return all_genres
    end






end
