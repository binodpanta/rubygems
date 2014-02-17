# finds all lines matching the given str pattern in the file
# basically a 'grep'
class Finder
    def initialize(file,str)
        @str = str
        @file = file
    end
    def read
        lines= []
        File.open(@file) { |f|
            f.each { |line|
                line.chomp!;
                lines << line if line.include? @str
            }
            
        }
        lines
    end
end