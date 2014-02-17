class Filereadgem
    def self.read(file="",str="")
        finder = Finder.new(file,str)
        finder.read
    end
end

require 'filereadgem/finder'

