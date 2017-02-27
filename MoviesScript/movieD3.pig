movie = load '/movie' using PigStorage(',') as (id:int,name:chararray,release:int,rating:float,sec:int);

filter_data = FILTER movie BY rating >= 3.0 and rating <= 4.0;

result = LIMIT filter_data 10;

dump result;

