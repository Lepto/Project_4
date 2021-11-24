-- Select coffee  shops within categories and attributes of interest
select *
from
	business
where
	category in ('Coffee & Tea', 'Coffee & Tea Supplies', 'Bakeries', 'Cafes', 'Chocolatiers & Shops', 'Coffee Roasteries', 'Donuts', 'Macarons', 'Patisserie/Cake Shop')
	and
	attr_key in ('bikeparking','restaurantspricerange2','outdoorseating','drivethru')

-- Calculate average number of reviews per month for each coffee shop
select
	business_id,
	round(avg(cnt), 4)
from	   
	(select
			business_id
			,strftime("%m-%Y", date) as 'month-year' 
			,count(review_id) as cnt
       from
			review
	   group by
			business_id
			,strftime("%m-%Y", date)
	   )
group by business_id


-- Define if coffee shop is a part of chain - if its name appears in list more than once, it is considered a chain
with names as
	(select
		address,
		upper(name) as un
	from
		business
	group by
		address
	order by un)
select
	n.un
from
	names n
group by
	n.un
having
	count(n.un)>1

--Final Query that gets for each coffee shop:
-- its age (based on rivies date), tips cout, is_chain, average monthly reviews count  
with age_rev as
	(select
		business_id as b_id,
		julianday( max(date)) - julianday(min(date)) as date_diff
	from
		review 
	group by
		business_id)	  
select
	ar.b_id,
	chains.name IS NOT NULL as 'is_chain' ,
	ar.date_diff,
	round(avg(rev.cnt), 4) as month_rev,
	count(t.id) as tips_count
from
	business b
left join (
	select name,  count(distinct address) from business
	group by name
	having count(distinct address)>1 ) as chains
on chains.name = b.name
left join(
	select
			business_id
			,strftime("%m-%Y", date) as 'month-year' 
			,count(review_id) as cnt
       from
			review
	   group by
			business_id
			,strftime("%m-%Y", date)) as rev
on rev.business_id = b.business_id
left join
	age_rev ar
on ar.b_id = b.business_id
left join
	tip t
on b.business_id = t.business_id
group by
	b.business_id