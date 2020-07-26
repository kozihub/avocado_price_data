# avocado_price_data
Trying find correlation in avocado prices with regions, organic/conventional, years

I used https://www.kaggle.com/neuromusic/avocado-prices csv dataset to run some queries in SQLite 

Some questions that I asked myself afterwards were:

1. Would the price be higher in areas further away from production farms? I made a query to see average price per region to see. If mapped, there could be a correlation.
2. As volume of avocados increased from 2015 to 2018, did supply and demand, government intervention, tariffs on imported avocados from Mexico aid in price increase?
3. Is the price increase between organic and conventional avocados worth it? In some areas, it's $1.00 more per avocado and US average was roughly $0.50. Should learn more about organic productions in US vs other production countries.
4. Western and Southwestern states have a much higher volume of avocados, so are the cheaper prices because of the high usage compared to the much higher costs on east coast states with less volumes?

Per https://www.kaggle.com/neuromusic/avocado-prices, the dataset has the following description for the dataset 

"

    Date - The date of the observation
    
    AveragePrice - the average price of a single avocado
    
    type - conventional or organic
    
    year - the year
    
    Region - the city or region of the observation
    
    Total Volume - Total number of avocados sold
    
    4046 - Total number of avocados with PLU 4046 sold
    
    4225 - Total number of avocados with PLU 4225 sold
    
    4770 - Total number of avocados with PLU 4770 sold
"

Thank you https://www.github.com/neuromusic for scrapping the data and making a nice csv table for public use and helping millennials see how avocado costs are an impactful part of our lives.
