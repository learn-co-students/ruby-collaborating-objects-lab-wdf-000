require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.glob("#{self.path}/*.mp3").collect { |mp3| mp3.split("mp3s/")[1] }
  end

  def import
    files.each do |file| 
      Song.new_by_filename(file)
    end
  end

end