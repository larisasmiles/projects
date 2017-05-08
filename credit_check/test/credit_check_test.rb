require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < MiniTest::Test

  def test_if_it_exists
    card = CreditCheck.new(4539355764212759)
    assert_instance_of CreditCheck, card
  end

  def test_if_card_splits
    c = CreditCheck.new(4539355764212759)

    assert_equal c.card_reverse(c.card), ["9", "5", "7", "2", "1", "2", "4", "6", "7", "5", "5",
                                        "3", "9", "3", "5", "4"]
  end

  def test_if_every_other_num_doubles
    c = CreditCheck.new(4539355764212759)
    creverse = c.card_reverse(c.card)

    assert_equal c.every_other_num_double(creverse), ["9", "10", "7", "4", "1", "4", "4", "12", "7", "10", "5",
                                                      "6", "9", "6", "5", "8"]
  end

  def test_if_it_adds_double_digits
    c = CreditCheck.new(4539355764212759)
    creverse = c.card_reverse(c.card)
    doubles = c.every_other_num_double(creverse)
    doubled = c.add_double_digits(doubles)

    assert_equal c.add_double_digits(doubled), [9, 1, 7, 4, 1, 4, 4, 3, 7, 1, 5,
                                                6, 9, 6, 5, 8]
  end

  def test_sum_all_digits
    c = CreditCheck.new(4539355764212759)
    creverse = c.card_reverse(c.card)
    doubled = c.every_other_num_double(creverse)
    added_doubled = c.add_double_digits(doubled)

    expected = 80
    actual = c.sum_of_all_digits

    assert_equal expected, actual
  end

  def test_validate_card
    c = CreditCheck.new(4539355764212759)
    creverse = c.card_reverse(c.card)
    doubled = c.every_other_num_double(creverse)
    added_doubled = c.add_double_digits(doubled)
    sum = c.sum_of_all_digits

    actual = c.validate_card

    assert actual
  end

  def test_credit_check_message
    c = CreditCheck.new(4716552966967355)
    creverse = c.card_reverse(c.card)
    doubled = c.every_other_num_double(creverse)
    added_doubled = c.add_double_digits(doubled)
    sum = c.sum_of_all_digits
    validated = c.validate_card

    expected = "Valid Credit Card Number!"
    actual = c.credit_check_message

    assert_equal expected, actual
  end

  def test_invalid_credit_card_number
    c = CreditCheck.new(5541801923795240)
    creverse = c.card_reverse(c.card)
    doubled = c.every_other_num_double(creverse)
    added_doubled = c.add_double_digits(doubled)
    sum = c.sum_of_all_digits
    validated = c.validate_card

    expected = "Not Valid Credit Card Number!"
    actual = c.credit_check_message

    assert_equal expected, actual
  end
end
