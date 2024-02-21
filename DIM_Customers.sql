-- Cleansed DIM_Customers Table--
SELECT 
  c.CustomerKey AS [Customer Key], 
  -- ,[GeographyKey]
  -- ,[CustomerAlternateKey]
  -- ,[Title]
  c.FirstName AS [First Name], 
  --,[MiddleName]
  c.LastName AS [Last Name], 
  c.FirstName + ' ' + LastName AS [Full Name], 
  --Combined First and Last Name--
  -- ,[NameStyle]
  -- ,[BirthDate]
  -- ,[MaritalStatus]
  -- ,[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  -- ,[EmailAddress]
  -- ,[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  -- ,[SpanishEducation]
  -- ,[FrenchEducation]
  -- ,[EnglishOccupation]
  -- ,[SpanishOccupation]
  -- ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  -- ,[AddressLine1]
  -- ,[AddressLine2]
  -- ,[Phone]
  c.DateFirstPurchase AS [First Purchase Date], 
  -- ,[CommuteDistance]
  g.city AS [Customer City]
FROM 
  dbo.DimCustomer AS c --Joined in Customer City from Geography Table
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY 
  [Customer Key] ASC; --Ordered list by CustomerKey