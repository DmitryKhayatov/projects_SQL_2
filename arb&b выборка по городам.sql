select 'Dallas' as "CITY",
    avg (price) as "AVG" 
        from airbnb_dallas.listings
        where minimum_nights = 30 
        and room_type like '%Private room%'
        
    union all 

select  'New York' as "CITY",
    avg (price) as "AVG" 
        from airbnb_new_york.listings
        where minimum_nights = 30 
        and room_type like '%Private room%'
       
   union all
   
select 'Oakland' as "CITY",
    avg (price) as "AVG" 
        from airbnb_oakland.listings
        where minimum_nights = 30 
        and room_type like '%Private room%'