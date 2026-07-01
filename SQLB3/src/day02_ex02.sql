  select 
  coalesce (p.name, '-') as person_name, 
  pv.visit_date as visit_date, 
  coalesce (pz.name, '-') as pizzeria_name 
  from person_visits pv 
  full join person p on p.id = pv.person_id 
  and (pv.visit_date between '2022-01-01' and '2022-01-03') 
  full join pizzeria pz on pz.id = pv.pizzeria_id 
  and (pv.visit_date between '2022-01-01' and '2022-01-03') 
  where pv.visit_date between '2022-01-01' and '2022-01-03' or pv.visit_date is null 
  order by person_name, visit_date, pizzeria_name;