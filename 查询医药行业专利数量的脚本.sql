
select sum(patent_num) from (
select count(*) patent_num,city,appliyear from 1985_2011_patent where  type=1 and author='1' and category like 'A61%' and appliyear<2014 AND `foreign`=0 and apprdate<'2011/01/01'
 group by appliyear,city 
union
select count(*) patent_num,city,appliyear from sq_2011_2016_2 where  type=1 and author='1' and category like 'A61%' and appliyear<2014
 AND `foreign`=0  group by appliyear,city  ) order by city
 
 
 select * from sq_2011_2016_2
 
 select count(*) patent_num,city,appliyear from 1985_2011_patent where  type=1 and author='1' and category like 'A61%' and appliyear<2014 AND `foreign`=0 and apprdate<'2011/01/01'
 group by appliyear,city  
union
select count(*) patent_num,city,appliyear from sq_2011_2016_2 where  type=1 and author='1' and category like 'A61%' and appliyear<2014
 AND `foreign`=0  group by appliyear,city order by patent_num desc
