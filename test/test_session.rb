require_relative '../lib/dropbox_utility'
require 'test/unit'

class TestSession < Test::Unit::TestCase

  def test_create_save_and_retrieve
    session = DropboxUtility::Session::create
    assert_not_nil session
    # This also tests the save method
    assert File.exists?(DropboxUtility::Config::AUTH_FILE)
    session = DropboxUtility::Session::retrieve
    assert_not_nil session
  end

  def test_delete
    assert_equal DropboxUtility::Session::delete, "Authentication file successfully deleted."
    assert_equal DropboxUtility::Session::delete, "Authentication file doesn't exist yet."
  end

end