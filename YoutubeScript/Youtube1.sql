create database if not exists youtube;

use youtube;

create external table if not exists stat(id string,uploader string,intrvl int,cat string,len int,views int,rating float,noRating int,cmnts int,Vid string) row format delimited fields terminated by '\t';

select cat, COUNT(id) SID from stat group by cat ORDER by SID desc limit 5;




