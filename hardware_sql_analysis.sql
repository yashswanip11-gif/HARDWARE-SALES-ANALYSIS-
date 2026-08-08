SELECT count(*) FROM sales.transactions where market_code="Mark005";

SELECT * FROM sales.transactions where currency="USD";

SELECT sum(sales.transactions.sales_amount) from sales.transactions
inner join sales.date on sales.transactions.order_date=sales.date.date
where sales.date.year=2020;

SELECT sum(sales.transactions.sales_amount) from sales.transactions
inner join sales.date on sales.transactions.order_date=sales.date.date
where sales.date.year=2019 and market_code="Mark004";

select distinct product_code from sales.transactions where market_code="Mark004";

select * from sales.transactions where sales_amount<=0;

select distinct(transactions.currency) from transactions;


#there are duplicates in currency that are need to be addressed here . 

select count(*) from transactions where currency='INR\r';
select count(*) from transactions where currency='INR';

select count(*) from transactions where currency='USD\r';
select count(*) from transactions where currency='USD';

select * from transactions where currency='USD' OR currency='USD\r';
