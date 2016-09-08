class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select{|file| file.include?(".mp3")}
  end

#cheated and changed spec.  why no worky?
#edit: reverted mp3_importer_spec, "save" added to Artist initialize, pr
  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
