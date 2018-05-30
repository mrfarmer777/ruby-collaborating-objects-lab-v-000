class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name=name
    @artist=nil
  end

  def new_by_filename(filename)
    art_name=filename.split(" - ")[0]
    song_name=filename.split(" - ")[1]
    song=Song.new(song_name)
    song.artist=art_name
    song
  end
end

    
