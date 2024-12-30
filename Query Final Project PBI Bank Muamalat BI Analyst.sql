select 
Date as order_date,
CategoryName AS category_name,
ProdName AS product_name,
Price AS product_price,
Quantity AS order_qty,
Price * Quantity  AS total_sales,
CustomerEmail AS cust_email,
CustomerCity AS cust_city
from
final_project.orders o
join final_project.customers c on o.CustomerID = c.CustomerID
join final_project.products p on o.ProdNumber = p.ProdNumber
join final_project.product_category pc on p.Category = pc.CategoryID
order by 
order_date;