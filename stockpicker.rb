def stockpicker(prices)
  min_price = 1000
  min_index = 0

  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
    end

    if price - min_price > max_profit
      max_profit = price - min_price
      best_days = [min_index, index]
    end
  end
  best_days
end

prices = [17,3,6,9,15,8,6,1,10]
p stockpicker(prices)