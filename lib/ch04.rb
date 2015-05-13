require 'minitest/autorun'

class TestCase < Minitest::Test
  def test_read_4th_character
    contents = File.read('data.txt')
    assert_equal 'd', contents[3, 1]
  end
end
