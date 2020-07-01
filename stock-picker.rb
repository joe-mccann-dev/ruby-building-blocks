# !/usr/bin/ruby
def stock_picker(prices)
  buy_day = 0
  profit = 0
  while buy_day < prices.length #buy-loop
    buy_price = prices[buy_day]
    sell_day = 1
    while sell_day < prices.length #sell-loop
      sell_price = prices[sell_day]
      if buy_day < sell_day # can't sell before buy 
        stored_profit = sell_price - buy_price # store profit in variable to compare with current value
        if stored_profit > profit
          profit = stored_profit 
          buy_sell_array = [buy_day, sell_day] 
        end
      end
      sell_day += 1  
    end
    buy_day += 1
  end
  prices == prices.sort.reverse ? "It's a bad time to buy." : buy_sell_array
end

p stock_picker([17,3,6,9,15,8,6,1,10]) 
