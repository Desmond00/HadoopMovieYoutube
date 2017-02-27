movie = load '/movie' using PigStorage(',') as (id:int,name:chararray,release:int,rating:float,sec:int);


grpMovie = Group movie All;

result = foreach grpMovie  Generate COUNT(movie.id);

dump result;
