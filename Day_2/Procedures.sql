
/*Procedure 1*/
 DELIMITER //
CREATE PROCEDURE p2()
BEGIN
 select p.productionid ,p.Productionname, count(m.moviename) from productions as p left join movie as m ON p.productionid = m.productionid group by p.productionid;
END //
DELIMITER ;
call p2
/*Procedure 2*/
 DELIMITER //
CREATE PROCEDURE p3()
BEGIN
select p.productionid ,p.Productionname, count(m.moviename) from productions as p left join movie as m ON p.productionid = m.productionid group by p.productionid;END //
DELIMITER ;
call p3

/*Procedure 3*/
 DELIMITER //
CREATE PROCEDURE p4()
BEGIN
select moviename,Heroname from movie  where productionid like "%82" ; 
END //
 DELIMITER ;
call p4
/*Procedure 4*/
 DELIMITER //
CREATE PROCEDURE p5()
BEGIN
select p.Ownername ,p.Productionname, count(m.moviename) from productions as p left join movie as m ON p.productionid = m.productionid group by p.productionid Having count(m.moviename)=0 ; 
END //
 DELIMITER ;
call p5
/*Procedure 5*/
DELIMITER //
CREATE PROCEDURE p6()
BEGIN
select p.Ownername ,p.Productionname from  movie as m right join productions as p ON  m.productionid =p.productionid where m.Language!="Hindi" ;END //
 DELIMITER ;
call p6;

