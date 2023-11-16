-- Opening Query: Establishing Data Focus Parameters --

SELECT State, City, Category, Sub_Category, Sales
FROM dbo.Superstore_sales_project_train_cleaned
WHERE State = 'Arizona' AND City = 'Phoenix' OR City = 'Scottsdale' OR City = 'Tucson'
ORDER BY Category

-- Examining Total Sales for the Three Focus Cities --

SELECT SUM(Sales) as Sum_of_Sales
FROM dbo.Superstore_sales_project_train_cleaned
WHERE City = 'Phoenix' OR City = 'Scottsdale' OR City = 'Tucson'

-- Examining Total Sales for Just Phoenix --

SELECT SUM(Sales) as Sum_of_Sales_Phoenix
FROM dbo.Superstore_sales_project_train_cleaned
WHERE City = 'Phoenix'

-- Examining Total Sales for Just Scottsdale --

SELECT SUM(Sales) as Sum_of_Sales_Scottsdale
FROM dbo.Superstore_sales_project_train_cleaned
WHERE City = 'Scottsdale'

-- Examining Total Sales for Just Tucson -- 

SELECT SUM(Sales) as Sum_of_Sales_Tucson
FROM dbo.Superstore_sales_project_train_cleaned
WHERE City = 'Tucson'

-- Examining Sales by Year and All Three Cities --

SELECT SUM(Sales) as Sum_of_Sales, Order_Date, City
FROM dbo.Superstore_sales_project_train_cleaned
WHERE City = 'Phoenix' OR City = 'Scottsdale' OR City = 'Tucson'
GROUP BY Order_Date, City
ORDER BY Order_Date, City

-- Examining Sales by Year and City of Phoenix --

SELECT SUM(Sales) as Sum_of_Sales, Order_Date, City
FROM dbo.Superstore_sales_project_train_cleaned
WHERE City = 'Phoenix'
GROUP BY Order_Date, City
ORDER BY Order_Date, City

-- Examining Sales by Year and City of Scottsdale --

SELECT SUM(Sales) as Sum_of_Sales, Order_Date, City
FROM dbo.Superstore_sales_project_train_cleaned
WHERE City = 'Scottsdale'
GROUP BY Order_Date, City
ORDER BY Order_Date, City

-- Examining Sales by Year and City of Tucson --

SELECT SUM(Sales) as Sum_of_Sales, Order_Date, City
FROM dbo.Superstore_sales_project_train_cleaned
WHERE City = 'Tucson'
GROUP BY Order_Date, City
ORDER BY Order_Date, City