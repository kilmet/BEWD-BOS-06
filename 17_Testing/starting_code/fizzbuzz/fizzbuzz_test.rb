require "minitest/autorun"
require "./fizzbuzz"
class TestFizzBuzz < Minitest::Test

  def test_6_is_divisible_by_3
    assert_equal divisible_by_3(6), true
  end

end
