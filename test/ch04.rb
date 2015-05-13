require 'minitest/autorun'

class TestCase < Minitest::Test
  def test_read_4th_character
    contents = File.read('data.txt')
    assert_equal 'd', contents[3, 1]
  end

  def test_read_4th_content_is_2
    contents = File.read('data.txt')
    assert_equal '2', contents[3, 1]
  end

  def test_read_causes_error_when_file_not_found
    contents = File.read('datas.txt')
    assert_equal '2', contents[3, 1]
  end
end
