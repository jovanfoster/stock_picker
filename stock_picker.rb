def stock_picker(stocks)
    best_buy = stocks.first
    best_sell = stocks.last

    stocks.each do |buy_price|
        stocks.reverse_each do |sell_price|
            if stocks.index(sell_price) > stocks.index(buy_price)
                if sell_price - buy_price > best_sell - best_buy
                    best_buy = buy_price
                    best_sell = sell_price
                end
            end
        end
    end
    return [stocks.index(best_buy), stocks.index(best_sell)]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])       