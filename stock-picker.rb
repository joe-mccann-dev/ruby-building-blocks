#!/usr/bin/ruby
def stock_picker(days)
  buy_day = 0
  profit = 0
  buy_sell_array = []
  while (buy_day < days.length) #buy-loop
    buy_price = days[buy_day]
    sell_day = 1
    while (sell_day < days.length) #sell-loop
      sell_price = days[sell_day]
      if (sell_price > buy_price && buy_day < sell_day) #ignore profits < 0 && can't sell before buy 
        stored_profit = sell_price - buy_price #store profit in variable to compare with current value
        if (stored_profit > profit)
          profit = stored_profit 
          buy_sell_array = [buy_day, sell_day] 
        end
      end
      sell_day += 1  
    end
    buy_day += 1
  end
  days == days.sort.reverse ? "It's a bad time to buy." : buy_sell_array
end

p stock_picker([17,3,6,9,15,8,6,1,10]) 