require 'pry'
class MP3Importer

  def initialize(path)
    @path = path

  end

  def path

   @path

  end

  def files
    Dir.entries(@path).select {|x | x.end_with?("mp3")}

  end

  def import
     self.files.each do |song|
        # if Artist.all.all? {|artist| artist.name != song }

            # Artist.all << Song.new_by_filename(song)
        Song.new_by_filename(song)

    end
    #  binding.pry
  end


  # def import
  #
  #     a =  files.each{|f| Song.new_by_filename(f[0])}
  #     a.each {|elm| Artist.all << elm}
  #     # Artist.all.uniq!
  #
  #
  #
  #
  #
  # end

end



# class MP3Importer
#   attr_reader :path
#
#   def initialize(path)
#     @path = path
#   end
#
#   def files
#     @files ||= Dir.glob("#{path}/*.mp3").collect{|f| f.gsub("#{path}/", "")}
#   end
#
#   def import
#     files.each{|f| Song.new_by_filename(f)}
#   end
# end
