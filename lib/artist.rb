
class Artist
  attr_accessor :name, :songs

  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
    self.save
  end

  def save
    @@all<<self
  end