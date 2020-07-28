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
    song.save
    song
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    @@all << song
    song
  end

  def save
    self.class.all << self
  end


end
