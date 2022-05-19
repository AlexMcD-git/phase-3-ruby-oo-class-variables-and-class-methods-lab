require 'pry'

class Song

    @@count = 0
    @@genres = []
    @@artists = []

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_conuts={}
        @@genres.each do |genre|
            if genre_conuts[genre]
                genre_conuts[genre]+=1
            else
                genre_conuts[genre]=1
            end
        end
        genre_conuts
    end

    def self.artist_count
        artist_conuts={}
        @@artists.each do |artist|
            if artist_conuts[artist]
                artist_conuts[artist]+=1
            else
                artist_conuts[artist]=1
            end
        end
        artist_conuts
    end


    attr_reader :name, :artist, :genre
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist

    end
end

# a=Song.new("name1", "artist1", "genre1")
# b=Song.new("name2", "artist2", "genre2")
# c=Song.new("name3", "artist3", "genre1")
# Song.genre_count