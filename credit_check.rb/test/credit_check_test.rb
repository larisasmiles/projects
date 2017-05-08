require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < MiniTest::Test

  def test_if_it_exists
    card = CreditCheck.new(4539355764212759)
    assert_instance_of CreditCheck, card
    binding.pry
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
    doubled = c.add_double_digits(creverse)

    assert_equal c.add_double_digits(doubled), [9, 1, 7, 4, 1, 4, 4, 3, 7, 1, 5,
                                                6, 9, 6, 5, 8]
  end


end
