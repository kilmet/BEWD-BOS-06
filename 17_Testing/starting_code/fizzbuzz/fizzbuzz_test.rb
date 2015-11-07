require "minitest/autorun"
require "./fizzbuzz"
class TestFizzBuzz < Minitest::Test

  def test_6_is_divisible_by_3
    assert divisible_by_3(6)
  end

  def test_5_is_not_divisible_by_3
    refute divisible_by_3(5)
  end

  def test_10_is_divisible_by_5
    assert divisible_by_5(10)
  end

  def test_9_is_not_divisible_by_5
    refute divisible_by_5(9)
  end

  def test_fizzbuzz_1_is_1
    assert_equal fizzbuzz(1), 1
  end

  def test_fizzbuzz_2_is_2
    assert_equal fizzbuzz(2), 2
  end

  def test_fizzbuzz_3_is_fizz
    assert_equal fizzbuzz(3), "fizz"
  end

  def test_fizzbuzz_5_is_buzz
    assert_equal  fizzbuzz(5), "buzz"
  end

  def test_fizzbuzz_15_is_fizzbuzz
    assert_equal  fizzbuzz(15), "fizzbuzz"
  end
end
