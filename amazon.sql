#1. List all products with a discounted price below ₹500.
select product_name, discounted_price from mytable where discounted_price < 500;

#2. Find products with a discount percentage of 50% or more.
select product_name, (discount_percentage * 100) as disc 
from mytable group by product_name,disc having disc >= 50;

#3. Retrieve all products where the name contains the word "Cable."
select product_name from mytable where product_name like "%cable%";

# 4. Display the difference between the average of the actual price and the average of discounted price for each product.
select product_name, 
round(avg(actual_price)) actualprice, round(avg(discounted_price)) as discountedprice, 
round(avg(actual_price) - avg(discounted_price)) as diff
from mytable group by product_name;

#5. Query reviews that mention "fast charging" in their content.
select product_id, product_name from mytable where product_name like "%fast charging%" group by product_id, product_name;

#6. Identify products with a discount percentage between 20% and 40%.
select product_name, discount_percentage * 100 as discount_percent from mytable where discount_percentage * 100 between  20 and 40;

#7. Find products that have an actual price above ₹1,000 and are rated 4 stars or above.
select product_name, actual_price, rating from mytable where actual_price > 1000 and rating = 4 group by product_name, actual_price, rating;

#8. Find products where the discounted price ends with a 9 ?
select product_name, discounted_price from mytable where discounted_price % 10 = 9;

#9. Display review contents that contains words like worst, waste, poor, or not good.
select product_name 
from mytable where review_content like '%worst%' or review_content like '%waste%' or review_content like '%poor%' or review_content like '%not good%';

#10. List all products where the category includes "Accessories."
select category from mytable where category like "%accessories%" group by category;