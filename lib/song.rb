require 'pry'
require 'pp'
require 'awesome_print'

class Song 
    attr_accessor :name, :artist, :genre

    
    @@count = 0

    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}


    def initialize(name, artist, genre) 
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count 
        @@count
    end

    def self.genres 
        @@genres = @@genres.uniq
    end

    def self.artists 
        @@artists = @@artists.uniq
    end

    def self.genre_count 
        
        @@genre_count = @@genres.each do |genre| 
            
            if @@genre_count[genre] 
                @@genre_count[genre] += 1 
            
            else
                @@genre_count[genre] = 1
            end
            
            ap @@genre_count
        end
    end
end

song_one = Song.new("one", "artist", "jammy-jams")
song_two = Song.new("two", "another_artist", "another_genre")
song_three = Song.new("three", "yet_another_artist", "another_genre")
song_four = Song.new("four", "final_artist", "another_genre")
song_five = Song.new("five", "final_artist", "yet_another_genre")

# puts Song.genres
ap Song.genre_count
