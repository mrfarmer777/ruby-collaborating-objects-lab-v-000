include 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path=path
    @files=Dir[path]
    binding.pry
  end

  def import
  end



end
