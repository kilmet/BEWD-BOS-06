require 'minitest/autorun'
require './roman_numeral'

class TestRomanNumeral < Minitest::Test

  def test_0_is_empty
    expected_value = ''
    actual_value = convert(0)
    assert_equal expected_value, actual_value
  end

  def test_1_is_I
    expected_value = 'I'
    actual_value = convert(1)
    assert_equal expected_value, actual_value
  end

  def test_2_is_II
    expected_value = 'II'
    actual_value = convert(2)
    assert_equal expected_value, actual_value
  end
  def test_3_is_III
    expected_value = 'III'
    actual_value = convert(3)
    assert_equal expected_value, actual_value
  end
  def test_4_is_IV
    expected_value = 'IV'
    actual_value = convert(4)
    assert_equal expected_value, actual_value
  end
end
