SELECT 
    c.Country,
    ROUND(AVG(i.Total), 2) AS AvgOrderValue,
    COUNT(i.InvoiceId) AS OrderCount
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY c.Country
ORDER BY AvgOrderValue DESC;