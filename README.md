# Data Analytics Power Bi Report

## Description 
The aim of this project is to complete a power Bi report of a medium sized international retailer. So Far I imported and transformed the required tables to complete the project. Futhermore, I have learnt how to build detail visuals to dispaly trends and findings whilst also learing the importance of using the right visual type to display to data. Another important aspect that I have learnt when using Power Bi is the importance of variables relationships and how it effect calculates in the the Data pane.

## Useage 
To use the Power Bi Report download the .pbix file in this git repository to access the file once you have gained access to the file you can navigate through the pages by holding on ctrl and clicking on each of the page navigation buttons in the navigation bar on the left hand side of the canvas. Futhermore, by clicking on each graph you can see what measures are used to build to the visual in the build pane to the right of the canvas also by clicking on each graph you can see how it effects other visuals on the same canvas. 

## Task 1: Setting up an enviroment
The First task consisted of creating a git repo to save the work created in this project.

## Task 2: Importing and transforming tables in Power BI 
Before any analysis took place I first imported the required tables(Orders, Products, Stores & Customers) using the the get data button in the home tab. After importing each table individually I then loaded the tables to be transformed using the transform data button (Pic 1) then after completeing the required transformation I rename columns and the table names to ensure that they were in line with Power Bi naming conventions then clicked close & apply to save the change. An example of some of the transformation that I made was in the Orders table were I separated data and time into separate coloums using the split coloumn function and split the column using the a common delimiter (,). I also remove duplicates from the product_code column in the Products table by selecting the column and clicking remove column and selecting remove duplicates. 

## Task 3: Create a Date Model 
After importing and transforming all the tables,I created a date table which started from the earliest date in the Orders['Order Date'] column to the end of the year containg the latest date in the Orders['Shipping Date'] (pic 2). After this I created the following columns (Day of Week, Month Number (i.e. Jan = 1, Dec = 12 etc.), Month Name, Quarter, Year, Start of Year, Start of Quarter, Start of Month & Start of Week) in the Date Table. Futhermore, I also created relationships between the tables by clicking on the model view tab in the left pane and created the following relationships (Products[product_code] to Orders[product_code], Stores[store code] to Orders[Store Code], Customers[User UUID] to Orders[User ID], Date[date] to Orders[Order Date], Date[date] to Orders[Shipping Date] & Orders[Order Date] to Date[Date] (pic 3). Enursing that the last relationship is the active relationship and that all relationships are set at all-to-many. Within this Task I also created a measures table for the creation of key measures which include (Total Orders, Total Profit, Total Revenue, Total Customers, Total Quantity, Profit YTD & Revenue YTD). Finally, I created two hierarcies (Date & Geography) the date hierarchy consisted of Start of Year, Start of Quarter, Start of Month, Start of Week & Date and was created by right clicking on start of Year and selecting new hierarchy then draging the rest of the column onto the hierarchy. The Geography hierarchy was created in the same way but with World Region, Country & Country Region. I also created two new columns in the stores table one that creates a full country name for each row based on stores country code and another that creates a geographical name for the store based on the Stores[Country Region], and Stores[Country] columns.

## Task 4: Setting up the Report 
This Task consisted of creating the report pages(Executive Summary, Customer Detail, Product Detail, Stores Map) that will be used to the display the finding, with a navigation bar which will be used to navigate through the pages and was created using insert shapes and designing a rectangle on the left side of the canvas. 

## Task 5: Building the Customer Detail Page 
This task consisted of creating aray of visuals based at a customer level. Firstly, two cards visuals were created (Unique Customers & Revenue per Customer). The Unique Customer visual consisted of the total customer column. The Reveune per Customer visual was created by dividing [Total Revenue] by [Total Customers]. The next visual created on this page is a donut chart which show the total customers for each country. This is followed by a column chart that visualise the number of customers per product category. The Line graph on this page visualises the total customers over time (Date hierarchy) with a trendline and forecast of the next 10 periods with a 95% confidence interval. This can also be drilled down to a month level by clicking on the downward pointed arrows.  The Next Visual created on this page is a table containing the top 20 customers (pic 4). The table shows the customers full name, the revenue and the number of orders and is filtered using a TopN filter to filter the top 20 customers based on Revenue. Finally, three more card visuals were added to show the top customers name, revenue and number of orders. A date slicer was also added to this page so you can filter the page by year.

## Task 6: Creating an Executive summary page 
This task consisted of providing an overview of the company's performance as a whole. The first visual created were three card visuals that display total orders, total profit & total revenue. The next visual is a duplicate line chart from the Customer Detail Page but displaying [Total Revenue] over time (Date hierarchy) with the  Start of Year, Start of Quarter and Start of Month levels displayed. Furthermore, a pair of donut charts were added which displayed [Total Revenue] broken down by Store[Country] & Store[Store Type]. Following this a Cluster Bar Chart was created displaying the [Total Orders] broken down by Products[Category]. Finally, a couple of KPI's visuals were created to display qaurterly revenue, profit & orders with a target of a 5% growth compared to previous quarter (pic 5). 

## Task 7: Create Product Details Page
This Task consists of providing details of which products in the inventory are doing well with the option to filter by product and region. The first visual created were three gauges displaying the current-quarter performance of orders, revenue and profit against a  10% quarterly growth target from the previous quarter (pic 6). The next visual created was an area chart which visualise how different Product Categories where performing over time in terms of revenue. Futhermore, a top 10 products table was created that included product description, Total Revenue, Total Customers, Total Profits and Prfits per Order. Finally, a scatter graph was created to display total quantity sold (Orders[Total Quantity]) vs  Products[Profit per Item] along with filter state cards and a slicer toolbar. The filter state cards was create to show to the state of filter when they are being applied. The Slicer toolbar was created on the right hand side of the canvas to allow for multiple filtering without having multiple slicers, Which included Products[Category] and Stores[Country].

## Task 8: Create a Store Map Page 
This task consisted creating visual details for each store in different regions to assess if stores are reaching their targets. The first visual is a map visual that display every store in each region with a bubble size set to [ProfitYTD] for each store. Above that is a Stores[Country] Slicer which allows you to filter for different regions. The next stage of this task is to create a strores drillthrough page which will allow users to see visuals for each store by right clicking on a store and selecting store Drillthrough (pic 8). The visuals on this page includes a card visual, table, clustered bar chart and two guages. The card visual states the selected store and the region that it is located. The table show the Top 5 products for the select store including Products[Description], [Profit YTD], [Total Orders] and [Total Revenue]. The clustered bar chart show the [Total Orders] by Product[Category] for the selected store. The two guages show [ProfitYTD] and [RevenueYTD] compared to [Profit Goal] and [Revenue Goal] which is set at a 20% growth vs the same period last year. Finally, the creation of a Profit tooltip page allows users to hover over a store on the Store Map Page and visualise the [ProfitYTD] compared to [Profit Goal] guage for each individual store. This was achieved setting the tooltip of the visual to the tooltip page created.

 ## Task 9: Cross Filtering and Navigation
This task consists of ensuring that only certain visuals filtered certain visual on a page and also making sure that users can navigate through the report page with ease. Firstly, by right clicking on an visual, then format and edit interaction a user can determine what visual can filter which other visual (pic 9). For eaxmple in the Executive Summary Page the bar chart should not filter the KPI's or the card visuals. In the Customer Detail Page Top 20 Customers table should not filter any of the other visuals, Total Customers by Product category should not affect the Customers line graph, Total Customers by Country donut chart should cross-filter the Total Customers by Product Category. Futhermore, the Scatter Graph and Top 10 Products table in the Product Detail page should not filter any other visuals. Finally, for the creation of the navigation buttons four blank were added to the navigation bar then the relevant pictures were added to identify each page. After, the folllowing instruction were used 'For each button, go to Format > Button Style > Apply settings to and set it to On Hover, and then select the alternative colourway of the relevant button under the Icon tab' which allowed the buttons to change colour when hovering over them. Then by turning on Action and setting it to page navigation to the correct page for each button the buttons are ready to use (pic 10). 

## Task 10: 
This task consisted of using SQL to allow users you do not have access to Power BI to access the results of the analyses. The First step was to connect to the SQL sever by using the credentials from VScode, Then once a connection was made the tables were checked by printing a list of the tables in the dataset and list of columns in each table. After this Queries began to be run on the database to answer the desired questions.  



## Appendix 
## Picture 1 
A picture of the Proudcts table ready to be transformed
![apen 1](https://github.com/user-attachments/assets/96c882c0-622b-4802-bd06-ebee396b9856)

## Picture 2 
A picture of the DateTable code 
![datetable code](https://github.com/user-attachments/assets/86ff3ba7-b75a-4bd4-92e8-ba2296dfd6b1)

## Picture 3 
A picture of a relationship between two tables 
![Relationships screenshot](https://github.com/user-attachments/assets/2f550194-4587-4c99-a6ff-61e66e3906cf)

## Picture 4 
A picture of the Customer Detail Page
![pic of customer detail page with top 20 filter](https://github.com/user-attachments/assets/4ba0d692-3077-41ed-9c0a-7be6d6a91fb8)

## Picture 5 
A picture of the Executive Summary Page
![Executive summary page with kpi's](https://github.com/user-attachments/assets/5888b802-7a84-46c6-9b1e-927311a5e8c5)

## Picture 6 
A picture of the Product Detail Page 
![Product detail page with guages](https://github.com/user-attachments/assets/f9f94084-7402-45af-b848-a19aee689187)

## Picture 7 
A picture of the Stores Drillthrough Page 
![Stores Drillthrough](https://github.com/user-attachments/assets/65815c63-92fa-4e10-a8f4-3ee0846f5615)

## Picture 8
A picture of how to access Stores Drillthrough page from Stores Map Page 
![20240927_160349](https://github.com/user-attachments/assets/1d4f3ff6-646c-4339-9780-181631f79f95)

## Pictue 9
A picture of a visual interaction with other visuals 
![visual interaction picture](https://github.com/user-attachments/assets/3681839a-6755-4d21-85c4-668718d52dad)

## Picture 10
A picture of navigation buttons
![20240927_161149](https://github.com/user-attachments/assets/ca8de7bd-806e-4541-8d7c-3c1b14a6f6b1)









