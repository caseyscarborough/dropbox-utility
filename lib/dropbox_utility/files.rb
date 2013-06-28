module DropboxUtility
  module Files

    def self.upload(filename)
      begin
        file = open(filename)
        DropboxUtility::client.put_file('/' + filename, file)
        puts "File #{filename} successfully uploaded."
      rescue Exception => e
        abort e.message
      end
    end

  end
end