class Artist

	attr_accessor :name, :songs
	@@song_count = 0

	def initialize(name)
		@name = name
		@songs = []
		
	end 

	def add_song(song)
	  @@song_count += 1
  	self.songs << song
  	song.has_parent = true
    song.artist = self
		
	end 

	def add_song_by_name(name)
	  @@song_count += 1
		song = Song.new(name)
		song.has_parent = true
		self.songs << song
		song.artist = self
	
	end

	def self.song_count
		@@song_count
	end


end 