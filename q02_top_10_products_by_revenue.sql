/* Q02: List the top 10 products by total revenue. Use Sales.SalesOrderDetail + Production.Product. */

Select 
        top 10
        P.name as 'ProductName',
        sum(linetotal) as 'totalRevenue' 
        from Production.Product p 
left join sales.SalesOrderDetail SO 
    on P.productid = SO.productid
group by p. name 
order by totalRevenue desc 