module DropboxUtility
  class Client < DropboxClient

    def get_info
      client_info = self.account_info()
      puts "\n" + client_info["display_name"]
      puts client_info["email"]
      puts "Referral Link: " + client_info["referral_link"]
      puts "\n"
    end

    def list_directory_contents(directory)

    end

  end
end