
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

  def self.find_or_create_by_name(name)
    res=nil
    @@all.each do |artist|
      if artist.name==name
        res=artist
      end
    end
    if res==nil
      res=Artist.new(name)
    end
    res
  end
end
