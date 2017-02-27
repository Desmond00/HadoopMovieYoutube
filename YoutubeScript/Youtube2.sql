create database if not exists youtube;

use youtube;

create external table if not exists stat(id string,uploader string,intrvl int,cat string,len int,views int,rating float,noRating int,cmnts int,Vid string) row format delimited fields terminated by '\t';

select rating,id from stat ORDER by rating desc limit 10;
