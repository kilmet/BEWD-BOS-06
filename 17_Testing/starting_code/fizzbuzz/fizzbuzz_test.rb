require "minitest/autorun"
require "./fizzbuzz"
class TestFizzBuzz < Minitest::Test

  def test_6_is_divisible_by_3
    assert divisible_by_3(6)
  end

  # def test_5_is_not_divisible_by_3
  #   refute divisible_by_3(5)
  # end
end
