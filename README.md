# Data Analytics Power Bi Report

## Description 
The aim of this project is to complete a power Bi report of a medium sized international retailer. So Far I imported and transform the required tables to complete the project. Futhermore, I have learnt how to build detail visual to dispaly trends and findings whilst also learing the importance of using the right visual type to display a certain type of data. Another important aspect that I have learnt when using Power Bi is the importance of variables relationships and how it effect calculates in the the Data pane.

## Useage 
To use Power Bi Report download the .pbix file in this git repository to access the file once you have gained access to the file you can navigate through the pages by holding on ctrl and clicking on each of the page navigation button in the navigation bar on the left hand side of the page. Futhermore, by clicking on each graph you can see what measures are used to build to the visual in the build pane to the right of the canvas also by clicking on each graph you can see how it effects other visuals on the same page. 

## Task 1: Setting up an enviroment
The First task consisted of creating a git repo to save the work created in this project.

## Task 2: Importing and transforming tables in Power BI 
Before any analysis took place I first imported the required tables(Orders, Products, Stores & Customers) using the the get data button in the home tab. After importing each table individual I then loaded the tables to be transform using the transform data button (Pic 1) then after completeing the required transformation I rename columns and the table names to ensure that they were in line with Power Bi naming conventions then clicked close & apply to save the change. An example of some of the transform that I made was in the Orders table were I separated data and time in separate coloums using the split coloumn function and split the column using the a common delimiter (,). I also remove duplicates from the product_code column in the Products table by selecting the column and clicking remove column and selecting remove duplicates. 

## Task 3: Create a Date Model 
After importing and transforming all the tables I created a date table which start from the earliest date in the Orders['Order Date'] column to the end of the year containg the latest date in the Orders['Shipping Date']. After this I created the following columns (Day of Week, Month Number (i.e. Jan = 1, Dec = 12 etc.), Month Name, Quarter, Year, Start of Year, Start of Quarter, Start of Month, Start of Week) in the Date Table. Futhermore, I also created relationships between the tables by clicking on the model view tab in the left pane and created the following relationships (Products[product_code] to Orders[product_code], Stores[store code] to Orders[Store Code], Customers[User UUID] to Orders[User ID], Date[date] to Orders[Order Date], Date[date] to Orders[Shipping Date] & Orders[Order Date] to Date[Date] enursing that the last relationship is the active relationship and that all relationships are set at all-to-many. Within this Task I also created a measure table for the creation of key measures which include (Total Orders, Total Profit, Total Revenue, Total Customers, Total Quantity, Profit YTD & Revenue YTD). Finally, I created two hierarcies (Date & Geography) the date hierarchy consisted of Start of Year, Start of Quarter, Start of Month,Start of Week, Date and was created by right clicking on start of Year and selecting new hierarchy then draging the rest of the column onto the hierarchy. The Geography hierarchy was created in the same way but with World Region, Country & Country Region. I created a  two new column in the stores table one that creates a full country name for each row based on stores country code and another that creates a geographical name for the store based on the Stores[Country Region], and Stores[Country] columns.

## Task 4: Setting up the Report 
This Task consisted of creating the report pages(Executive Summary, Customer Detail, Product Detail, Stores Map) that will be used the display our finding,  with a navigation bar which will be used to navigate through the pages and was created using insert shapes and designing rectangle on the left side of the canvas. 

## Task 5: Building the Customer Detail Page 
This task consisted of creating aray of visuals based at a customer level. Firstly, two cards visuals were created (Unique Customers & Revenue per Customer). The Unique Customer visual consisted of the total customer column. The Reveune per Customer visual was created by dividing [Total Revenue] by [Total Customers]. The next visual created on this page is a donut chart which show the total customer for each country. This is followed by a column chart that visualise the number of customers per product category. The Line graph on this page visualises the total customers over time (Date hierarchy) with a trendline and forecast of the next 10 periods with a 95% confidence interval. The can also be drilled down to a month level by clicking on the downward pointed arrows.  The Next Visual created on this page is a table containing the top 20 customers. The table shows the customers full name, the revenue and the number of orders and is filtered using a TopN filter to filter the top 20 customers based on Revenue. Finally, three more card visuals were added to show the top customers name, revenue and number of orders. A date slicer was also added to this page so you can filter the page by year.

## Task 6: Creating an Executive summary page 
This task consisted of providing an overview of the company's performance as a whole. The first visual created were three card visuals that display total orders, total profit & total revenue. The next visual is a duplicate line chart from the Customer Detail Page but displaying [Total Revenue] over time (Date hierarchy) with the  Start of Year, Start of Quarter and Start of Month levels displayed. Furthermore, a pair of donut charts were added which displayed [Total Revenue] broken down by Store[Country] & Store[Store Type]. Following this a Cluster Bar Chart was created displaying the [Total Orders] broken down by Products[Category]. Finally, a couple of KPI's visuals were created to display qaurterly revenue, profit & orders with a target of a 5% growth compared to previous quarter. 

## Task 7: Create Product Details Page
This Task consists of providing details of which products in the inventory are doing well with the option to filter by product and region. The first visual created were three gauges displaying the current-quarter performance of Orders, Revenue and Profit against a  10% quarterly growth target from the previous quarter. The next visual created was an area chart which visualise how different Product Categories where performing over time in terms of revenue. Futhermore, a top 10 products table that included product description, Total Revenue, Total Customers, Total Profits and Prfits per Order. Finally, a sctter graph was created to display total quantity sold (Orders[Total Quantity]) vs  Products[Profit per Item]. Along with the following visual created filter state cards and a slicer toolbar were added to the page. The filter state card was create to show to the state of filter when they are being applied. The Slicer toolbar was created on the right hand side of the canvas to allow for multiple filtering without having multiple slicers, Which included Products[Category] and Stores[Country].

## Task 8: Create a Store Map Page 
This task consisted creating visual details for each store in different regions to assess if stores are reaching their targets. The first visual is a map visual that display every store in each region with a bubble size set to [ProfitYTD] for each store. Above that is a Stores[Country] Slicer which allows you to filter for different regions. The stage of this task is to create strores drillthrough page which will allow users to see visual by right clicking on store on the Store Map Page and selecting store Drillthrough. The visual on this page include card visual, table, clustered bar chart and two guages. The ard visual stating the selected store and the region that it is located. The tabl e show the Top 5 products for the select store including Products[Description], [Profit YTD], [Total Orders] and [Total Revenue]. The clustered bar chart show the [Total Orders] by Product[Category] for the selected store. The two guages show [ProfitYTD] and [RevenueYTD] compared to [Profit Goal] and [Revenue Goal] which is set at a 20% growth vs the same period last year. Finally, the creation of a Profit tooltip page allows users to hover over a store on the Store Map Page and visualise the [ProfitYTD] compared to [Profit Goal] guage for each individual store. To achieve this on the Profit Tooltip Page set the tooltip of the visual to the tooltip page you have created.

 ## Task 9: Cross Filtering and Navigation
 This task consists of ensuring that only certain visuals filter certain visual on a page and also making sure that users can navigate through the report page with ease. Firstly, by right clicking on an visual, then format, edit interaction (pic) a user can determine what visual can filter which visual. For eaxmple in the Executive Summary Page the bar chart should not filter the KPI's or the card visuals. In the Customer Detail Page Top 20 Customers table should not filter any of the other visuals, Total Customers by Product category should not affect the Customers line graph, Total Customers by Country donut chart should cross-filter the Total Customers by Product Category. Futhermore, the Scatter Graph and Top 10 Products table in the Product Detail page should filter anyother visuals. Finally, for the creation of the navigation buttons four blank were added to the navigation bar then the relevant picture was added to each of the buttons to identify each page after the folllowing instruction were used 'For each button, go to Format > Button Style > Apply settings to and set it to On Hover, and then select the alternative colourway of the relevant button under the Icon tab' which allowed the buttons to change colour when hovering over them. The by turning on Action and setting it to page navigation to the correct page for each button and copied the buttons across all of the main pages. 

## Task 10: 


