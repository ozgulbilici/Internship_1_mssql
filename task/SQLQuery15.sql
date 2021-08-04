select full_name as 'HS' from schools 
where school_category_id 
IN( select school_category_id from schools s1 inner join school_category sc1
on s1.school_category_id = sc1.id
where name = 'HS') 