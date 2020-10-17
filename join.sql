select mo.movie_name, d.first_name, d.last_name, mo.release_date
from movies mo
join directors d
on mo.director_id = d.director_id
order by mo.release_date
limit 8;
-- "The Wizard of Oz"	"Victor"	"Fleming"	"1939-08-25"
-- "Gone with the Wind"	"Victor"	"Fleming"	"1939-12-15"
-- "Mary Poppins"	"Robert"	"Stevenson"	"1964-08-29"
-- "The Sound of Music"	"Robert"	"Wise"	"1965-03-02"
-- "A Clockwork Orange"	"Stanley"	"Kubrick"	"1972-02-02"
-- "Way of the Dragon "	"Bruce"	"Lee"	"1972-06-01"
-- "Jaws"	"Steven"	"Spielberg"	"1975-06-20"
-- "Taxi Driver"	"Martin"	"Scorsese"	"1976-02-07"