movie = load '/movie' using PigStorage(',') as (id:int,name:chararray,release:int,rating:float,sec:int);

filterMovie = FILTER movie BY sec > 7200;

grpMovie = Group filterMovie All;

result = foreach grpMovie  Generate COUNT(filterMovie.sec);

dump result;
