--Cleaned FACT_InternetSales Table--
SELECT 
  [ProductKey] AS [Product Key], 
  [OrderDateKey] AS [Order Date Key], 
  [DueDateKey] AS [Due Date Key], 
  [ShipDateKey] AS [Ship Date Key], 
  [CustomerKey] AS [Customer Key], 
  --  [PromotionKey], 
  --  [CurrencyKey], 
  --  [SalesTerritoryKey], 
  [SalesOrderNumber] AS [Sales Order Number], 
  --  [SalesOrderLineNumber], 
  --  [RevisionNumber], 
  --  [OrderQuantity], 
  --  [UnitPrice], 
  --  [ExtendedAmount], 
  --  [UnitPriceDiscountPct], 
  --  [DiscountAmount], 
  --  [ProductStandardCost], 
  --  [TotalProductCost], 
  [SalesAmount] AS [Sales Amount]
  --  [TaxAmt], 
  --  [Freight], 
  --  [CarrierTrackingNumber], 
  --  [CustomerPONumber], 
  --  [OrderDate], 
  --  [DueDate], 
  --  [ShipDate] 
FROM 
  dbo.FactInternetSales 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) - 2 -- Ensures we are bringing in rows 2 years from order date
ORDER BY 
  OrderDateKey ASC;