begin
  require 'dropbox_sdk'
  require 'launchy'
rescue Exception => e
  puts "Some gems are missing."
  abort e.message
end

require_relative 'dropbox_utility/config'
require_relative 'dropbox_utility/version'
require_relative 'dropbox_utility/session'
require_relative 'dropbox_utility/client'
require_relative 'dropbox_utility/files'


module DropboxUtility

  @@session = nil
  @@client = nil

  def self.authenticate
    @@session = Session::exists? ? Session::retrieve : Session::create
    @@client = Client.new(@@session, Config::ACCESS_TYPE)
  end

  def self.client
    @@client
  end

end
