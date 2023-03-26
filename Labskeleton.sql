rem Lab Unit 10-11 Simple SELECT and Sorting 
set echo on
set linesize 132
set pagesize 66
spool c:\cprg250s\unit10-11LabOutput.txt

rem Q1 - basic select columns with headers

select first_name as "FIRST_NAME", last_name as "LAST_NAME" 
from rcv_agent
WHERE agent_speciality not in ('CA') and agent_level in ('III' ,'IV') 
order by 2;

rem Q2
select tour_description as "TOUR_DESCRIPTION"
FROM rcv_vacation_tour
WHERE rating_code in ('E','M') AND tour_description like '%Paris%' 
order by 1;

rem Q3 
column "COUNTRY" format A30
select country as "COUNTRY", dest_description as "DEST_DESCRIPTION"
FROM rcv_destination
WHERE country in ('Canada','United States')
order by 1,2;
clear columns


spool off

