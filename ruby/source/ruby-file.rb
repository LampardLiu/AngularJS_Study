class FileOperation

    def self.open
        File.foreach("string.rb") { |line| puts line.dump  }
    end
end

FileOperation.open