--1.Show the schools full name which exist in “Bronzeville” Geographic Area ?
select full_name as 'Bronzeville Schools' from schools 
where cps_unit 
IN( select cps_unit from address a1 inner join geographic_area g1
on a1.geographic_area_id = g1.geographic_area_id
where geographic_area_name = 'Bronzeville') 


--2.Show the ES  schools in “Logan square” community area ?
select full_name as 'Logan Square' from schools 
where cps_unit 
IN( select cps_unit from address a1 inner join community c1
on a1.community_area_id = c1.community_area_id
where community_area_name = 'Logan Square')


--3.Show the HS schools which has a  contract  type?
SELECT full_name as 'HS'
FROM schools s
INNER JOIN school_category sc
ON s.school_category_id=sc.id
INNER JOIN school_type st
ON s.school_type_id=st.id
WHERE sc.name = 'HS' and st.school_type_name='Contract' 


--4.Show the schools which have PK-8th attending grades and Early_Childhood_Program in 2 US Congressional District? 
select*from program_types inner join school_program_types 
on program_types.id=school_program_types.program_types_id
inner join schools on  school_program_types.cps_unit=schools.cps_unit  
inner join address on schools.cps_unit=address.cps_unit
inner join grades on address.cps_unit=grades.cps_unit 
where [from]='PK' and upto='8th' and us_congressional_district='2' and name='Early_Childhood_Program'



--5.Show the community area that has the most schools in it?
select        top 1 community_area_name, COUNT(com.community_area_id) as schoolCountPerCommunity
from        community com
left join    address ad on ad.community_area_id = com.community_area_id
left join    schools sc on sc.cps_unit = ad.cps_unit
group by    com.community_area_id, community_area_name
order by    schoolCountPerCommunity desc


--6.Show the community area that has the least schools in it?
SELECT        TOP 1 community_area_name, COUNT(c.community_area_id) as schoolCountPerCommunity
FROM        community c
LEFT JOIN    address a ON a.community_area_id = c.community_area_id
LEFT JOIN    schools s ON s.cps_unit = a.cps_unit
GROUP BY    c.community_area_id, community_area_name
ORDER BY    schoolCountPerCommunity ASC



--7.Show the average number of schools according to the geographic area?
SELECT CAST((SELECT COUNT(full_name) FROM schools) as float) / CAST((SELECT COUNT(geographic_area_name) 
FROM geographic_area) as float) as AvgSchoolsPerGeoArea



--8.Show all the ES schools community area west town located in ward 1?
SELECT full_name as 'Schools' FROM schools s
INNER JOIN school_category sc ON s.school_category_id=sc.id
INNER JOIN address a ON s.cps_unit=a.cps_unit
INNER JOIN community c ON c.community_area_id=a.community_area_id
WHERE a.ward=1 
AND c.community_area_name='West Town' 
AND sc.name='ES'


--9.Which school has the most programs?
SELECT TOP 1 full_name,COUNT(s.cps_unit) as 'Schools' FROM schools s
LEFT JOIN school_program_types spt ON spt.cps_unit=s.cps_unit
LEFT JOIN program_types pt ON pt.id=spt.program_types_id
GROUP BY s.full_name,s.cps_unit
ORDER BY 'Schools' DESC


--10.What is the popular program in schools?
SELECT TOP 1 name AS 'Program Names', count(spt.program_types_id) AS Schools
FROM program_types pt
INNER JOIN school_program_types spt ON spt.program_types_id = pt.id
INNER JOIN schools s ON s.cps_unit = spt.cps_unit
GROUP BY pt.id, pt.name
ORDER BY schools desc