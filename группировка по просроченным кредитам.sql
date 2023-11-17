select id_client, name_city, amt_loan, 'late' as collection, amt_loan*0.9 as loan_reserve

        from skybank.late_collection_clients a
            join skybank.region_dict b
            on a.id_city = b.id_city
    where name_city like 'Москва'
    and amt_loan is not null

union all

select id_client, name_city, amt_credit, 'early' as collection, amt_credit*0.6 as loan_reserve

         from skybank.early_collection_clients a
             join skybank.region_dict b
             on a.id_city = b.id_city
             
       where name_city like 'Москва'
       and amt_credit is not null