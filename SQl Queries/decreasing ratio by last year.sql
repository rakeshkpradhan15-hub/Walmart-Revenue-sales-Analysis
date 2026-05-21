 -- top 5 branch with highest decreasing ratio compared to last year (2022)
WITH aa AS (
SELECT branch,
YEAR(date) AS year,
SUM(total) AS revenue
FROM walmartdata
GROUP BY branch, YEAR(date)),
ss AS (
    SELECT a.branch,
           a.revenue AS revenue_2022,
           b.revenue AS revenue_2023,
ROUND(((a.revenue - b.revenue) / a.revenue) * 100,2)
AS decrease_ratio, dense_rank() over( order by ROUND(((a.revenue - b.revenue) / a.revenue) * 100,2) desc ) rnk
FROM aa AS a
JOIN aa AS b
ON a.branch = b.branch
WHERE a.year = 2022
AND b.year = 2023
AND b.revenue < a.revenue
)
SELECT * FROM ss
where rnk <=5
order by decrease_ratio desc ;