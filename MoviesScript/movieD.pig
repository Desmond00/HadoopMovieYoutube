movie = load '/movie' using PigStorage(',') as (id:int,name:chararray,release:int,rating:float,sec:int);

filter_data = FILTER movie BY release >= 1950 and release <=1960;

result = LIMIT filter_data 10;

dump result;

