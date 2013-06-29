begin
  require 'launchy'
rescue Exception => e
  puts "Some gems are missing."
  abort e.message
end

require_relative '../vendor/dropbox_sdk/dropbox_sdk'
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

  def self.session
    @@session
  end

  def self.delete_authentication_file
    puts Session.delete
  end

end
