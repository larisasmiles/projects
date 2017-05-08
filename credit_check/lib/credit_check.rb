class CreditCheck
  attr_reader :card

  def initialize(card)
    @card = card
    # @double_nums = double_nums
  end

  def card_reverse(card)
    card.to_s.split("").reverse
  end

  def every_other_num_double(array)
    array.map.with_index do |num, idx|
     idx.odd? ? (num.to_i * 2).to_s : num
    end
  end


  def add_double_digits(array)
    @double_nums = array.map.with_index do |num|
      num.to_s.length > 1 ? num[0].to_i + num[1].to_i : num.to_i
    end
  end

  def sum_of_all_digits
    sum_total = []
    double_nums.each do |num|
      sum_total << num.to_i
    end
    sum_total.inject(:+)
  end

  def validate_card
    if sum_of_all_digits % 10 == 0
      true
    else
      false
    end
  end

  def credit_check_message
    if validate_card == true
      puts "Valid Credit Card Number!"
    else
      puts "Not Valid Credit Card Number!"
    end
  end
end
