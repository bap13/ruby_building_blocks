def stock_picker(prices)
  right_price = prices[-1]
  max_diff = -1
  buy_day = -1
  sell_day = -1

  for i in (prices.length - 2).downto(0)
    if prices[i] > right_price 
      right_price = prices[i]
    end
    tmp_diff = right_price - prices[0..i].min
    if tmp_diff > max_diff
      max_diff = tmp_diff
      buy_day = prices[0..i].index(prices[0..i].min)
      sell_day = prices.length - 1 - prices.reverse.index(prices[i..-1].max)
    end
  end
  puts "Buy on day #{buy_day} and sell on day #{sell_day} for a profit of $#{max_diff}."
end
