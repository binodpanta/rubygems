class Finder
    def initialize(file,str)
        @str = str
        @file = file
    end
    def read
        File.open(@file) { |f|
            f.each { |line|
                line.chomp!;
                return line if line.include? @str
            }
            
        }
    end
end