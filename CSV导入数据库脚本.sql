LOAD DATA infile 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/WG2011_2016_1.csv'
replace into table wg_2011_2016_1
character set utf8
fields terminated by "," optionally enclosed by '"' escaped by '"'  
lines terminated by "\r\n"
IGNORE 1 LINES;


