SELECT 
    c.Country,
    COUNT(DISTINCT c.CustomerId) AS NumCustomers,
    SUM(i.Total) AS TotalRevenue,
    ROUND(SUM(i.Total) / COUNT(DISTINCT c.CustomerId), 2) AS RevenuePerCustomer
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY c.Country
ORDER BY RevenuePerCustomer DESC;