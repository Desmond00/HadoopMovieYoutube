movie = load '/movie' using PigStorage(',') as (id:int,name:chararray,release:int,rating:float,sec:int);

grp = Group movie by release;  

result = foreach grp generate  org.apache.pig.builtin.Distinct(movie.release),COUNT(movie.id);

lmt = LIMIT result 100;

dump lmt;

