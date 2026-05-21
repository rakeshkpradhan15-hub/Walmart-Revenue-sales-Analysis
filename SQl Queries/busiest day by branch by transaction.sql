-- identify busiest day from each branch based on their transaction

WITH crr AS
(SELECT Branch,
        dayname(date) AS day_name,
        count(*) AS total_transactions,
        RANK() OVER(
		PARTITION BY Branch ORDER BY COUNT(*) DESC) AS rnk
	FROM walmartdata
    GROUP BY Branch, DAYNAME(date))

SELECT 
    Branch,
    day_name,
    total_transactions
FROM crr
WHERE rnk = 1;