SELECT 
    c.Country,
    SUM(i.Total) AS TotalRevenue,
    COUNT(DISTINCT i.InvoiceId) AS TotalOrders,
    COUNT(DISTINCT c.CustomerId) AS TotalCustomers
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY c.Country
ORDER BY TotalRevenue DESC;