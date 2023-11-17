select a.*, count (id_class) cnt_classes

        from  skyeng_db.teachers a
            join  (select *
                from skyeng_db.classes
                    where (class_status like 'success' or class_status  like 'failed_by_student')
                    and not (class_type like 'trial')
                    and date_trunc('year', class_start_datetime) = '2016-01-01') b 
            on a.id_teacher=b.id_teacher
group by a.id_teacher
order by cnt_classes DESC