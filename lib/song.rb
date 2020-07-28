class Song
  
  attr_accessor :name, :artist_name
  
  @@all = []
  
  def self.create
    song = self.new
    song.save
    song
  end


  def self.all
    @@all
  end
  
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  
  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  
  def self.find_by_name(name)
    self.all.find{|person| person.name == name}
  end
  
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
      
      
  def self.alphabetical
    self.all.sort_by{|song| song.name}
  end
  
  
  def self.new_from_filename(filename)
    
    artist_song = filename.split(" - ")
    artist_name = artist_song[0]
    song_name = artist_song[1].chomp(".mp3")
    
    self.new_by_name(song_name)
    song.artist_name = artist_name
    song
    
  end
      
  
  def save
    self.class.all << self
  end
  


end
