require_relative '../lib/dropbox_utility'
require 'test/unit'

class TestClient < Test::Unit::TestCase

  DropboxUtility::authenticate

  def test_inheritance
    assert_equal DropboxUtility::Client.superclass, DropboxClient
  end

  def test_client
    client = DropboxUtility::client
    assert_instance_of DropboxUtility::Client, client
  end

  def test_get_info
    client_info = DropboxUtility::client.account_info
    info = "\n" + client_info["display_name"]
    info += "\n" + client_info["email"]
    info += "\n" + "Referral Link: " + client_info["referral_link"]
    info += "\n"
    assert_equal DropboxUtility::client.get_info, info
  end

end