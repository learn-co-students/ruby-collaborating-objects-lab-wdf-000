class MP3Importer
  attr_reader :path, :files

  def initialize(path)
    @path = path
    @files = Dir.glob("#{path}/*.mp3").collect { |f| f.gsub("#{path}/", "") }
  end

  def import
    @files.each { |filename| Song.new_by_filename(filename) }
  end
end
