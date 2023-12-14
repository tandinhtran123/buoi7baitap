--bai 1
select Name from STUDENTS
where Marks >75
order by right (Name,3), ID
--bai 2
select user_id,
concat (upper (left(name,1)),lower (right(name,length (name) -1))) as name
from Users
order by user_id
--bai 3
SELECT manufacturer,
'$'|| round (sum(total_sales)/1000000,0) || ' '|| 'million' as sale
FROM pharmacy_sales
group by manufacturer
order by sum(total_sales) desc, manufacturer
--bai 4
SELECT
EXTRACT (month from submit_date) as mth,
product_id,
Round (AVG (stars),2) as avg_star
FROM reviews
group by mth, product_id
order by EXTRACT (month from submit_date), product_id
--bai 5
SELECT sender_id,
count (message_id) as message_count
FROM messages
where extract (month from sent_date)=8
and extract (year from sent_date)=2022
group by sender_id
order by message_count desc
limit 2
-- bai 6
select tweet_id from Tweets
where length(content) >15
-- bai 7
--bai 8
select count (id) as number_of_employees
from employees
where extract (month from joining_date) between 1 and 7
and extract (year from joining_date) =2022
--bai 9
select position ('a' in first_name) as position
from worker
where first_name = 'Amitah'
--bai 10
select
substring (title, length(winery)+2,4)
from winemag_p2
where country = 'Macedonia'
