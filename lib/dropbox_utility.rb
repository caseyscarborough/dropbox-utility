require 'dropbox_sdk'
require 'launchy'
require_relative'dropbox_utility/config'
require_relative 'dropbox_utility/version'
require_relative 'dropbox_utility/session'
require_relative 'dropbox_utility/client'

module DropboxUtility

  def self.authenticate
    session = Session::exists? ? Session::retrieve : Session::create
    Client.new(session, Config::ACCESS_TYPE)
  end

end
