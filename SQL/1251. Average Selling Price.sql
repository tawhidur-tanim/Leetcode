select prices.product_id, isnull(cast(sum( price * units * 1.0)/sum(units) as decimal(18,2)),0) average_price

from 

prices left outer join UnitsSold

on UnitsSold.purchase_date >= Prices.start_date and UnitsSold.purchase_date <= Prices.end_date
and UnitsSold.product_id = Prices.product_id

group by prices.product_id

