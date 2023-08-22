-- Regions
create or replace dynamic table CURATED.REGIONS
TARGET_LAG = '1 minute'
WAREHOUSE = TRANSFORMATION_WH
as 
select distinct REGION_CODE, REGION_NAME, COUNTRY_CODE
from STAGING.STG_ATTENDANCE_FSM
WHERE REGION_CODE IS NOT NULL and REGION_NAME IS NOT NULL;


-- Local Authorities
create or replace dynamic table CURATED.LOCAL_AUTHORITIES
TARGET_LAG = '1 minute'
WAREHOUSE = TRANSFORMATION_WH
as 
select distinct NEW_LA_CODE as LA_CODE, LA_NAME,  OLD_LA_CODE, REGION_CODE
from STAGING.STG_ATTENDANCE_FSM
WHERE LA_NAME is not null;


-- Terms
create or replace dynamic table CURATED.TERMS
TARGET_LAG = '1 minute'
WAREHOUSE = TRANSFORMATION_WH
as 
select distinct 
        TIME_PERIOD || ' ' || TIME_IDENTIFIER as TERM_KEY,
        TIME_PERIOD, 
        TIME_IDENTIFIER, 
case 
        when TIME_IDENTIFIER = 'Autumn term'
        then to_date(substr(TIME_PERIOD,0,4) || '-09-01')
        when TIME_IDENTIFIER = 'Spring term' 
        then to_date(substr(TIME_PERIOD,0,2) || substr(TIME_PERIOD,5,6) || '-01-01')
        when TIME_IDENTIFIER = 'Summer term' 
        then to_date(substr(TIME_PERIOD,0,2) || substr(TIME_PERIOD,5,6) || '-04-14')
    end as APPROXIMATE_TERM_START_DATE
from STAGING.STG_ATTENDANCE_FSM;
