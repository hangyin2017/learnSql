select * from movies
where age_certificate = '15'
and movie_lang = 'English';

select * from movies
where movie_length > 120;

select * from actors
where first_name in ('Bruce', 'John');

select * from actors
where first_name like 'P%'
or last_name like 'William_';

select * from actors
where date_of_birth is null;