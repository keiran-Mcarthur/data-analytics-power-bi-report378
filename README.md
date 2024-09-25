# Data Analytics Power Bi Report

## Description 
The aim of this project is to complete a power Bi report of a medium sized international retailer. So Far I imported and transform the required tables to complete the project. 

## Useage 
Talk about navigation buttons 

## Task 1: Setting up an enviroment
The First task consisted of creating a git repo to save the work created in this project.

## Task 2: Importing and transforming tables in Power BI 
Before any analysis took place I first imported the required tables(Orders, Products, Stores & Customers) using the the get data button in the home tab. After importing each table individual I then loaded the tables to be transform using the transform data button (Pic 1) then after completeing the required transformation I rename columns and the table names to ensure that they were in line with Power Bi naming conventions then clicked close & apply to save the change. An example of some of the transform that I made was in the Orders table were I separated data and time in separate coloums using the split coloumn function and split the column using the a common delimiter (,). I also remove duplicates from the product_code column in the Products table by selecting the column and clicking remove column and selecting remove duplicates. 

## Task 3: Create a Date Model 
After importing and transforming all the tables I created a date table which start from the earliest date in the Orders['Order Date'] column to the end of the year containg the latest date in the Orders['Shipping Date']. After this I created the following columns (Day of Week, Month Number (i.e. Jan = 1, Dec = 12 etc.), Month Name, Quarter, Year, Start of Year, Start of Quarter, Start of Month, Start of Week) in the Date Table. Futhermore, I also created relationships between the tables by clicking on the manage relationship tab in the left pane and created the following relationships (Products[product_code] to Orders[product_code], Stores[store code] to Orders[Store Code], Customers[User UUID] to Orders[User ID], Date[date] to Orders[Order Date], Date[date] to Orders[Shipping Date] & Orders[Order Date] to Date[Date] enursing that the last relationship is the active relationship and that all relationships are set at all-to-many. Within this Task I also created a measure table for the creation of key measures which include (Total Orders, Total Profit, Total Revenue, Total Customers, Total Quantity, Profit YTD & Revenue YTD). Finally, I created two hierarcies (Date & Geography) the date hierarchy consisted of Start of Year, Start of Quarter, Start of Month,Start of Week, Date and was created by right clicking on start of Year and selecting new hierarchy then draging the rest of the column onto the hierarchy. The Geography hierarchy was created in the same way but with World Region, Country & Country Region. I created a  two new column in the stores table one that creates a full country name for each row based on stores country code and another that creates a geographical name for the store based on the Stores[Country Region], and Stores[Country] columns.
