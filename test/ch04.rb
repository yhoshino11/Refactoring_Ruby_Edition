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

  def test_read_with_a_length_specified
    contents = File.read('data.txt', 15)
    assert_equal 'Bradman 99.', contents
  end

  def test_read_empty_file_returns_empty_string
    File.open('empty_data.txt', 'w') {}
    contents = File.read('empty_data.txt')
    assert_equal '', contents
  end
end
