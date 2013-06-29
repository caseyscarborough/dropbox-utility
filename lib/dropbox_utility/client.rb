module DropboxUtility
  class Client < DropboxClient

    def get_info
      "\n" + account_info["display_name"] + "\n" + account_info["email"] +
      "\n" + "Referral Link: " + account_info["referral_link"] + "\n"
    end

  end
end