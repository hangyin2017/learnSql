select movie_lang, avg(movie_length) from movies
group by movie_lang;
-- "Portuguese"	142.5000000000000000
-- "German"	165.0000000000000000
-- "Chinese"	121.8000000000000000
-- "English"	126.9473684210526316
-- "Swedish"	128.0000000000000000
-- "Spanish"	98.0000000000000000
-- "Korean"	130.0000000000000000
-- "Japanese"	111.5000000000000000

select movie_lang, count(*) from movies
group by movie_lang;
-- "Portuguese"	2
-- "German"	1
-- "Chinese"	5
-- "English"	38
-- "Swedish"	1
-- "Spanish"	1
-- "Korean"	1
-- "Japanese"	4

select movie_lang, count(*) from movies
group by movie_lang
having count(*) > 1
order by count(*) desc;
-- "English"	38
-- "Chinese"	5
-- "Japanese"	4
-- "Portuguese"	2