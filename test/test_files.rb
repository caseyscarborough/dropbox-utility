require_relative '../lib/dropbox_utility'
require 'test/unit'

class TestFiles < Test::Unit::TestCase

  DropboxUtility::authenticate

  def test_upload
    File.open('testfile.txt','w') { |f| f.write("This is a test.") }
    assert DropboxUtility::Files::upload('testfile.txt')
    File.delete('testfile.txt')
  end

  def test_list
    assert DropboxUtility::Files::list
  end

end