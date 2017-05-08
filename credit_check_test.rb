require 'minitest/autorun'
require 'minitest/pride'
# require './lib/credit_check

class CreditCard < MiniTest::Test

  def test_new_card_number
    card = CreditCard.new
    assert_intance_of card card.CreditCard.new
  end
end
