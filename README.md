# Data Analytics Power Bi Report

## Description 
The aim of this project is to complete a power Bi report of a medium sized international retailer. So Far I imported and transformed the required tables to complete the project. Futhermore, I have learnt how to build detail visuals to dispaly trends and findings whilst also learing the importance of using the right visual type to display to data. Another important aspect that I have learnt when using Power Bi is the importance of variables relationships and how it effect calculates in the the Data pane.

## Useage 
To use the Power Bi Report download the .pbix file in this git repository to access the file once you have gained access to the file you can navigate through the pages by holding on ctrl and clicking on each of the page navigation buttons in the navigation bar on the left hand side of the canvas. Futhermore, by clicking on each graph you can see what measures are used to build to the visual in the build pane to the right of the canvas also by clicking on each graph you can see how it effects other visuals on the same canvas. 

## Task 5: Building the Customer Detail Page 
This task consisted of creating aray of visuals based at a customer level. Firstly, two cards visuals were created (Unique Customers & Revenue per Customer) which displayed the total number of unique customers and revenue per customer. The next visual created on this page is a donut chart which show the total customers for each country. This is followed by a donut chart that visualise the number of customers per product category. The Line graph on this page visualises the total customers over time (Date hierarchy) with a trendline and forecast of the next 10 periods with a 95% confidence interval. This can also be drilled down to a month level by clicking on the downward pointed arrows.  The Next Visual created on this page is a table containing the top 20 customers (pic 1). The table shows the customers full name, the revenue and the number of orders and is filtered using a TopN filter to filter the top 20 customers based on Revenue. Finally, three more card visuals were added to show the top customers name, revenue and number of orders. A date slicer was also added to this page so you can filter the page by year.

## Task 6: Building an Executive summary page 
This task consisted of providing an overview of the company's performance as a whole. The first visual created were three card visuals that display total orders, total profit & total revenue. The next visual is a duplicate line chart from the Customer Detail Page but displaying [Total Revenue] over time (Date hierarchy) with the  Start of Year, Start of Quarter and Start of Month levels displayed. Furthermore, a pair of donut charts were added which displayed [Total Revenue] broken down by Store[Country] & Store[Store Type]. Following this a Cluster Bar Chart was created displaying the [Total Orders] broken down by Products[Category]. Finally, a couple of KPI's visuals were created to display qaurterly revenue, profit & orders with a target of a 5% growth compared to previous quarter (pic 2). 

## Task 7: Building a Product Details Page
This Task consists of providing details of which products in the inventory are doing well with the option to filter by product and region. The first visual created were three gauges displaying the current-quarter performance of orders, revenue and profit against a  10% quarterly growth target from the previous quarter (pic 3). The next visual created was an area chart which visualise how different Product Categories where performing over time in terms of revenue. Futhermore, a top 10 products table was created that included product description, Total Revenue, Total Customers, Total Profits and Prfits per Order. Finally, a scatter graph was created to display total quantity sold (Orders[Total Quantity]) vs  Products[Profit per Item] along with filter state cards and a slicer toolbar. The filter state cards was create to show to the state of filter when they are being applied. The Slicer toolbar was created on the right hand side of the canvas to allow for multiple filtering without having multiple slicers, Which included Products[Category] and Stores[Country].

## Task 8: Building a Store Map Page 
This task consisted creating visual details for each store in different regions to assess if stores are reaching their targets. The first visual is a map visual that display every store in each region with a bubble size set to [ProfitYTD] for each store. Above that is a Stores[Country] Slicer which allows you to filter for different regions. The next stage of this task is to create a strores drillthrough page which will allow users to see visuals for each store by right clicking on a store and selecting store Drillthrough (pic 4 & 5). The visuals on this page includes a card visual, table, clustered bar chart and two guages. The card visual states the selected store and the region that it is located. The table show the Top 5 products for the select store including Products[Description], [Profit YTD], [Total Orders] and [Total Revenue]. The clustered bar chart show the [Total Orders] by Product[Category] for the selected store. The two guages show [ProfitYTD] and [RevenueYTD] compared to [Profit Goal] and [Revenue Goal] which is set at a 20% growth vs the same period last year. Finally, the creation of a Profit tooltip page allows users to hover over a store on the Store Map Page and visualise the [ProfitYTD] compared to [Profit Goal] guage for each individual store.


## Interacting with the report through SQL: 
This task consisted of using SQL to allow users you do not have access to Power BI to access the results of the analyses. The First step was to connect to the SQL sever by using the credentials from VScode, Then once a connection was made the tables were checked by printing a list of the tables in the dataset and list of columns in each table. After this Queries began to be run on the database to answer the desired questions.  



## Appendix
## Picture 1
A picture of the Customer Detail Page
![pic of customer detail page with top 20 filter](https://github.com/user-attachments/assets/4ba0d692-3077-41ed-9c0a-7be6d6a91fb8)

## Picture 2
A picture of the Executive Summary Page
![Executive summary page with kpi's](https://github.com/user-attachments/assets/5888b802-7a84-46c6-9b1e-927311a5e8c5)

## Picture 3
A picture of the Product Detail Page 
![Product detail page with guages](https://github.com/user-attachments/assets/f9f94084-7402-45af-b848-a19aee689187)

## Picture 4
A picture of the Stores Drillthrough Page 
![Stores Drillthrough](https://github.com/user-attachments/assets/65815c63-92fa-4e10-a8f4-3ee0846f5615)

## Picture 5
A picture of how to access Stores Drillthrough page from Stores Map Page 
![20240927_160349](https://github.com/user-attachments/assets/1d4f3ff6-646c-4339-9780-181631f79f95)











