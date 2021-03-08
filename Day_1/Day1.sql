use pk;
select * from movie;
select * from productions;
/*Question 1*/
select moviename  from movie where Movietype like "Drama%";
/*Question 2*/
 select moviename  from movie where Heroname like "Siddharth%";
/*Question 3*/
  select count(moviename) from movie where Length>18;
/*Question 4*/
  select MIN(Length) from movie;
/*Question 5*/
select moviename from movie where Language like "T%";
/*Question 6*/
  select moviename,Heroname,Heroine,Max(Length) from movie;
/*Question 7*/
select moviename,Heroname,Heroine from movie where Releaseddate > STR_TO_DATE('15/03/2018', '%m/%d/%Y');
/*Question 8*/
select count(moviename) from movie where  Movietype like "thriller%";
/*Question 9*/
select count(moviename) from movie where Releaseddate = STR_TO_DATE('15-03-2018', '%m-%d-%Y');
/*Question 10*/
    select Releaseddate from movie where moviename like "Zero%";
/*Question 11*/
  select Heroname from movie where Heroine like "Amy%" ;
/*Question 12*/  
   select count(moviename) from movie where MONTH(releasedate)='10';



   select DISTINCT moviename, Language from movie;

insert into movie values(151,'Zero','Shah ruck','Katrina Kaif',STR_TO_DATE('12-12-2018', '%m-%d-%Y'),'Hindi',16,'Scientific',1988);
#Advanced Querries
/*Question 1*/
select p.productionid ,p.Productionname, count(m.moviename) from productions as p left join movie as m ON p.productionid = m.productionid group by p.productionid;
/*Question 2*/
select p.productionid ,p.Productionname, count(m.moviename) from productions as p left join movie as m ON p.productionid = m.productionid group by p.productionid having count(moviename)>=2;
/*Question 3*/
 select p.productionid ,p.Productionname, count(m.moviename) from productions as p left join movie as m ON p.productionid = m.productionid group by p.productionid ORDER BY `productionid` DESC LIMIT 1;
/*Question 4*/
select p.productionname ,m.heroname, m.moviename from productions as p left join movie as m ON p.productionid = m.productionid where ownername="Subaskaran";
/*Question 5*/
 select moviename,Heroname from movie  where productionid like "%82" ;  
/*Question 6*/
  select p.Ownername ,p.Productionname, count(m.moviename) from productions as p left join movie as m ON p.productionid = m.productionid group by p.productionid Having count(m.moviename)=0 ; 
/*Question 7*/
   select p.Ownername ,p.Productionname from  movie as m right join productions as p ON  m.productionid =p.productionid where m.Language!="Hindi" ;
   UPDATE movie 
SET 
    Heroine = 'Amy'
WHERE
    Movieid = 441;