class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def self.create
    song = self.new
    @@all << song
    song
  end
  def self.new_by_name(name)
    song = self.new(name)
    @@all << self.new(name)
  end
  

end
