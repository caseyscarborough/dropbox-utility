module DropboxUtility
  module Files

    def self.upload(filename)
      begin
        file = open(filename)
        DropboxUtility::client.put_file('/' + filename, file)
        puts "File #{filename} successfully uploaded."
        return true
      rescue Exception => e
        abort e.message
      end
    end

    def self.list(folder = '/')
      begin
        files_metadata = DropboxUtility::client.metadata(folder)
        files_metadata["contents"].each do |f|
          path = f["path"]
          name = File.basename(path)
          if (f["is_dir"]) then name += '/' end
          puts name
        end
        return true
      rescue Exception => e
        abort e.message
      end
    end

  end
end