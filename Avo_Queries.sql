
-- See which regions sells the most bag over all the years
SELECT DISTINCT region, sum(TotalBags) as 'Total Bags Per Region' from avocado
GROUP BY 1
ORDER BY 2 DESC;

-- Check which year had the highest prices
SELECT DISTINCT year, avg(AveragePrice) AS 'Average Price' from avocado
GROUP BY 1
ORDER BY 2 DESC;

-- Check which year saw the highest production volume
SELECT DISTINCT year, avg(TotalVolume)  AS 'Average Total Volume' from avocado
GROUP BY 1
ORDER BY 2 DESC;

-- Check the volume of each years PLU (Size of avocados, 4046 are small size, 4225 are medium size, 4770 are the large/xtra large sizes)
-- There is some discrepency when adding the volumes of the 3 PLU's since they don't add up to total volume, so this could mean that there are other PLU's not in the data
SELECT DISTINCT year,  avg(plu_4046) as '4046 Avo',  avg(plu_4225) as '4225 avo', avg(plu_4770) as '4770 avo', avg(TotalVolume) as 'Average Total Volume' from avocado
GROUP BY 1;



-- I wanted to check conventional and organic prices per region to see if certain areas would have a greater price difference
-- Since the data set has cities and regions combined as regions, it could be better to separate the data into two separate tables with cities in one and states/regions/totalUS in another since data is double counted otherwise 
WITH 
	org_price AS (
		SELECT region, type, (AveragePrice) as AvgPrice_Org from avocado
		WHERE type = 'organic'
		GROUP BY 1),
	conv_price AS (
		SELECT region, type, (AveragePrice) as AvgPrice_Conv from avocado
		WHERE type = 'conventional'
		GROUP BY 1)
SELECT org_price.region, 
	org_price.AvgPrice_Org, 
	conv_price.AvgPrice_Conv, 
	(org_price.AvgPrice_Org -  conv_price.AvgPrice_Conv) AS DiffBtwOrgConv 
	from org_price
JOIN conv_price ON org_price.region = conv_price.region
ORDER BY 4 DESC
;
