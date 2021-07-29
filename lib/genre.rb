class Genre 

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
        Song.all.select { |s| s.genre == self }
    end

    def artists
        all_artists = []
    
        Song.all.each do |s|
            if s.genre == self
                all_artists << s.artist
            end
        end
        return all_artists
    end








end
