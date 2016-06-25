require 'pry'

class MP3Importer

  attr_reader :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def import
    @files = Dir["/path/to/search/*"]
    binding.pry
  end

end
