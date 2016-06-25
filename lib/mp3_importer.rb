
class MP3Importer

  attr_reader :path, :files

  def initialize(path)
    @path = path
    Dir.chdir(path + "/") do
      @files = Dir.glob("*.mp3")
    end
  end


  def import
    @files.each do |filename|
      song = Song.new_by_filename(filename)
      artist = Artist.find_or_create_by_name(song.artist.name)
      artist.songs << song
      Artist.all << artist if !Artist.all.any? { |a| a == artist }
    end
  end

end
