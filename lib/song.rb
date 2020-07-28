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

  
  def self.find_by_name(name)
    self.all.find{|person| person.name == name}
  end
  
  
  def self.find_or_create_by_name(name)
    
    if self.find_by_name == false 
      self.create_by_name
    else
      self.find_by_name
    end
    
  end
      
  
  def save
    self.class.all << self
  end


end
