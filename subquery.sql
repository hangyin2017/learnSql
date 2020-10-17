select movie_name, movie_length from movies
where movie_length <
(select avg(movie_length) from movies)
order by movie_length desc
limit 8
-- "The Shining"	126
-- "Life of Brian"	126
-- "In the Mood for Love"	124
-- "Star Wars: A New Hope"	123
-- "Leon"	123
-- "Gone with the Wind"	123
-- "Blade Runner "	121
-- "Top Gun"	121

select mo.movie_name, mor.domestic_takings, mor.international_takings
from movies mo
join movie_revenues mor
on mo.movie_id = mor.movie_id
where mo.movie_id in
(select mor.movie_id from movie_revenues
where mor.domestic_takings > mor.international_takings
and mor.international_takings is not null)
order by domestic_takings desc
limit 8
-- "Star Wars: A New Hope"	461.20	314.20
-- "Star Wars: Return of the Jedi"	309.10	166.20
-- "Star Wars: Empire Strikes Back"	290.30	247.80
-- "Jaws"	260.30	210.90
-- "Toy Story"	192.10	182.40
-- "Top Gun"	180.10	177.30
-- "Crouching Tiger Hidden Dragon"	128.10	85.10
-- "Pulp Fiction"	107.90	106.20