require_relative '../lib/dropbox_utility'
require 'test/unit'

class TestDropboxUtility < Test::Unit::TestCase

  DropboxUtility::authenticate

  def test_session
    assert_not_nil DropboxUtility::session
  end

  def test_client
    assert_not_nil DropboxUtility::client
  end

  def test_authentication_file
    assert File.exists?(DropboxUtility::Config::AUTH_FILE)
  end

  def test_delete_authentication_file
    DropboxUtility::delete_authentication_file
    assert !File.exists?(DropboxUtility::Config::AUTH_FILE)
  end

end