def coin_changer(cents_received)
  coin_value = {quarter: 25, dime: 10, nickel: 5, penny: 1}
  coins_returned = {quarter: 0, dime: 0, nickel: 0, penny: 0}

  coin_value.each do |individual_coins, worth_of_coins|
    while cents_received.to_i >= worth_of_coins.to_i
      cents_received = cents_received.to_i - worth_of_coins.to_i
      coins_returned[individual_coins] += 1
    end
  end

coins_returned.collect { |key, value| "  #{value} #{key}  " }.join
end