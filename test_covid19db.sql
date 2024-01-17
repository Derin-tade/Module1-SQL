select * from participant;
select * from test_centre;
select * from place;
select * from visits;
select * from contact;
select * from visits_contact;
select * from covid_tests;

select place_id, count(place_id) as place_count from visits
group by place_id;


select distinct vc.visit_id from visits_contact vc, visits v
where vc.visit_id =v.visit_id
order by vc.visit_id;