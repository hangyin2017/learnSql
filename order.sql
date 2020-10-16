select * from movies
where movie_length between 100 and 120
order by movie_length desc
limit 12 offset 4;

select distinct movie_lang from movies
where movie_length between 100 and 120

select distinct movie_lang, movie_length from movies
where movie_length between 100 and 120
order by movie_length
-- "English"	104
-- "Japanese"	107
-- "Japanese"	108
-- "Japanese"	111
-- "English"	112
-- "Chinese"	113
-- "English"	115
-- "English"	117
-- "English"	118
-- "English"	119
-- "English"	120
-- "Japanese"	120

select first_name as surname, date_of_birth from actors
where date_of_birth between '1975-01-01' and '1979-12-31'
order by surname;
-- "Chen"	"1976-10-14"
-- "James"	"1978-04-19"
-- "Ji-tae"	"1976-04-13"
-- "Kate"	"1975-10-05"
-- "Leandro"	"1978-06-23"
-- "Malin"	"1978-05-12"
-- "Milla"	"1975-12-17"
-- "Sally"	"1976-04-27"
-- "Tobey"	"1975-06-27"
-- "Ziyi"	"1979-02-09"
