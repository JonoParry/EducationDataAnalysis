-- top 5 attendance
select la_name, avg(attendance_perc) as overall_attendance_perc
from EDUCATIONAL_DATA_ANALYSIS_PROD.CONSUMPTION.ATTENDANCE_FSM
where region_name = :region
and free_school_meal_eligible = :fsm
and term_key = :term
group by la_name
order by overall_attendance_perc desc
limit 5

-- top 5 unauth holiday
select la_name as "Local Authority", avg(UNAUTH_HOL_PERC) as unauth_holiday_percent
from EDUCATIONAL_DATA_ANALYSIS_PROD.CONSUMPTION.ATTENDANCE_FSM
where region_name = :region
and free_school_meal_eligible = :fsm
and term_key = :term
group by la_name
order by unauth_holiday_percent asc
limit 5

-- bottom 5 attendance
select la_name as "Local Authority", avg(attendance_perc) as overall_attendance_perc
from EDUCATIONAL_DATA_ANALYSIS_PROD.CONSUMPTION.ATTENDANCE_FSM
where region_name = :region
and free_school_meal_eligible = :fsm
and term_key = :term
group by la_name
order by overall_attendance_perc asc
limit 5

-- bottom 5 unauth holiday
select la_name as "Local Authority", avg(UNAUTH_HOL_PERC) as unauth_holiday_percent
from EDUCATIONAL_DATA_ANALYSIS_PROD.CONSUMPTION.ATTENDANCE_FSM
where region_name = :region
and free_school_meal_eligible = :fsm
and term_key = :term
group by la_name
order by unauth_holiday_percent desc
limit 5


-- illness vs attendance
select la_name, region_name, free_school_meal_eligible, avg(attendance_perc), avg(illness_perc) from EDUCATIONAL_DATA_ANALYSIS_PROD.CURATED.ATTENDANCE_FSM
where region_name = :region
and term_key = :term
group by all

