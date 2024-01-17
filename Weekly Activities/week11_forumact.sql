select * from product;
select * from vendor;
--1
select count(p_code) as products_over_10
from product
where p_price >10;
--2
select v.*, p.* from
vendor v
join
product p
on p.v_code = v.v_code;
--3with cte as 
select v.v_code,v. v_name, v.v_contact, count(p.p_code) as product_ount
from  vendor v
join
product p
on p.v_code = v.v_code
group by v.v_code,v. v_name, v.v_contact;