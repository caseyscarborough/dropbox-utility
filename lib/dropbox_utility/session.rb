module DropboxUtility
  module Session

    def self.retrieve
      File.open(DropboxUtility::Config::AUTH_FILE, 'r') do |f|
        DropboxSession::deserialize(f.read)
      end
    end

    def self.save(session)
      File.open(DropboxUtility::Config::AUTH_FILE, 'w') do |f|
        f.write session.serialize
      end
    end

    def self.exists?
      File.exists?(DropboxUtility::Config::AUTH_FILE)
    end

    def self.create
      session = DropboxSession.new(DropboxUtility::Config::APP_KEY, DropboxUtility::Config::APP_SECRET)

      session.get_request_token
      authorize_url = session.get_authorize_url("")

      Launchy.open(authorize_url)
      puts "After authorizing the application, press the 'Enter' key."
      STDIN.gets

      begin
        session.get_access_token
        puts "Authorization successful. Saving session..."
        save(session)
        session
      rescue Exception => e
        abort e.message
      end
    end

    def self.delete
      if self.exists?
        begin
          File.delete(DropboxUtility::Config::AUTH_FILE)
          puts "Authorization file successfully deleted."
        rescue Exception => e
          abort e.message
        end
      else
        puts "Authentication file doesn't exist yet."
      end
    end

  end
end
