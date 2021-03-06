module DropboxUtility
  module Config

    class << self
      attr_accessor :APP_KEY, :APP_SECRET, :ACCESS_TYPE, :AUTH_FILE
    end

    APP_KEY = ''
    APP_SECRET = ''
    ACCESS_TYPE = :dropbox
    AUTH_FILE = Dir.home + '/.dropbox-utility'

  end
end