DROP DATABASE IF EXISTS  MapDB ;
DROP USER IF EXISTS MapUser@localhost;
CREATE DATABASE MapDB;
CREATE USER 'MapUser'@'localhost' IDENTIFIED BY 'map';
GRANT SELECT ON MapDB.* TO 'MapUser'@'localhost';
CREATE TABLE MapDB.provaC(
 X varchar(10),
 Y float(5,2),
C float(5,2)
);
insert into MapDB.provaC values('A',2,1);
insert into MapDB.provaC values('A',2,1);
insert into MapDB.provaC values('A',1,1);
insert into MapDB.provaC values('A',2,1);
insert into MapDB.provaC values('A',5,1.5);
insert into MapDB.provaC values('A',5,1.5);
insert into MapDB.provaC values('A',6,1.5);
insert into MapDB.provaC values('B',6,10);
insert into MapDB.provaC values('A',6,1.5);
insert into MapDB.provaC values('A',6,1.5);
insert into MapDB.provaC values('B',10,10);
insert into MapDB.provaC values('B',5,10);
insert into MapDB.provaC values('B',12,10);
insert into MapDB.provaC values('B',14,10);
insert into MapDB.provaC values('A',1,1);
commit;

create table MapDB.servo(motor varchar(10), screw varchar(10), pgain int, vgain int, class double);
insert into MapDB.servo values('E','E',5,4, 0.28125095);
insert into MapDB.servo values('B','D',6,5, 0.5062525);
insert into MapDB.servo values('D','D',4,3, 0.35625148);
insert into MapDB.servo values('B','A',3,2, 5.500033);
insert into MapDB.servo values('D','B',6,5, 0.35625148);
insert into MapDB.servo values('E','C',4,3, 0.8062546);
insert into MapDB.servo values('C','A',3,2, 5.100014);
insert into MapDB.servo values('A','A',3,2, 5.7000422);
insert into MapDB.servo values('C','A',6,5, 0.76875436);
insert into MapDB.servo values('D','A',4,1, 1.0312537);
insert into MapDB.servo values('B','E',6,5, 0.46875226);
insert into MapDB.servo values('E','C',5,4, 0.39375174);
insert into MapDB.servo values('B','C',4,1, 0.28125095);



insert into MapDB.servo values('E','C',3,1, 1.1);
insert into MapDB.servo values('C','C',5,4, 0.5062525);
insert into MapDB.servo values('E','B',3,2, 1.8999897);
insert into MapDB.servo values('D','C',3,1, 0.9000011);
insert into MapDB.servo values('B','C',5,4, 0.46875226);
insert into MapDB.servo values('B','B',5,4, 0.5437528);
insert into MapDB.servo values('C','E',4,2, 0.20625044);
insert into MapDB.servo values('E','D',4,3, 0.9187554);
insert into MapDB.servo values('A','D',4,3, 1.1062483);
insert into MapDB.servo values('B','C',6,5, 0.46875226);
insert into MapDB.servo values('A','C',4,2, 0.58125305);
insert into MapDB.servo values('A','B',6,5, 0.58125305);
insert into MapDB.servo values('E','C',6,5, 0.39375174);



insert into MapDB.servo values('A','A',3,1, 5.3000236);
insert into MapDB.servo values('A','E',4,2, 0.46875226);
insert into MapDB.servo values('C','D',3,2, 1.8999897);
insert into MapDB.servo values('B','B',3,2, 4.299977);
insert into MapDB.servo values('B','E',4,2, 0.35625148);
insert into MapDB.servo values('B','C',3,1, 3.899964);
insert into MapDB.servo values('C','E',4,1, 0.5437528);
insert into MapDB.servo values('C','A',6,2, 0.5437528);
insert into MapDB.servo values('C','C',6,5, 0.5062525);
insert into MapDB.servo values('E','E',3,2, 1.1);
insert into MapDB.servo values('D','E',3,1, 0.5000003);
insert into MapDB.servo values('E','C',4,2, 0.13124992);
insert into MapDB.servo values('C','B',6,5, 0.5437528);




insert into MapDB.servo values('C','D',4,1, 0.20625044);
insert into MapDB.servo values('D','B',4,1, 0.69375384);
insert into MapDB.servo values('C','B',4,3, 0.88125515);
insert into MapDB.servo values('C','C',4,3, 0.9187554);
insert into MapDB.servo values('B','D',4,1, 0.2437507);
insert into MapDB.servo values('B','A',5,3, 0.6562536);
insert into MapDB.servo values('A','B',4,3, 1.0312537);
insert into MapDB.servo values('B','A',4,1, 0.8062546);
insert into MapDB.servo values('E','D',4,2, 0.431252);
insert into MapDB.servo values('C','E',3,2, 4.0999675);
insert into MapDB.servo values('D','D',3,1, 0.7000007);
insert into MapDB.servo values('D','A',6,5, 0.431252);
insert into MapDB.servo values('C','B',3,2, 4.499986);



insert into MapDB.servo values('B','E',3,2, 4.6999955);
insert into MapDB.servo values('C','D',5,4, 0.5062525);
insert into MapDB.servo values('B','B',4,2, 0.7312541);
insert into MapDB.servo values('A','E',4,3, 1.1437455);
insert into MapDB.servo values('A','A',4,2, 0.88125515);
insert into MapDB.servo values('B','D',4,3, 1.0312537);
insert into MapDB.servo values('E','A',3,2, 6.9000983);
insert into MapDB.servo values('B','C',4,3, 0.9562557);
insert into MapDB.servo values('E','B',4,2, 0.58125305);
insert into MapDB.servo values('E','A',5,4, 0.58125305);
insert into MapDB.servo values('E','B',5,4, 0.431252);
insert into MapDB.servo values('C','A',6,1, 0.5437528);
insert into MapDB.servo values('D','A',4,3, 0.7312541);



insert into MapDB.servo values('C','B',4,2, 0.5062525);
insert into MapDB.servo values('D','B',3,2, 1.6999923);
insert into MapDB.servo values('D','C',3,2, 1.2999974);
insert into MapDB.servo values('C','A',5,2, 0.5437528);
insert into MapDB.servo values('B','D',4,2, 0.39375174);
insert into MapDB.servo values('B','A',6,5, 0.8062546);
insert into MapDB.servo values('D','A',4,2, 0.28125095);
insert into MapDB.servo values('C','B',5,4, 0.5437528);
insert into MapDB.servo values('A','E',6,5, 0.5062525);
insert into MapDB.servo values('A','C',4,1, 0.35625148);
insert into MapDB.servo values('A','E',5,4, 0.5062525);
insert into MapDB.servo values('E','C',4,1, 0.28125095);
insert into MapDB.servo values('B','B',3,1, 4.499986);



insert into MapDB.servo values('A','D',3,2, 4.6999955);
insert into MapDB.servo values('E','D',3,2, 1.2999974);
insert into MapDB.servo values('E','A',3,1, 7.1001077);
insert into MapDB.servo values('A','C',6,5, 0.5062525);
insert into MapDB.servo values('C','E',5,4, 0.46875226);
insert into MapDB.servo values('C','A',5,4, 0.76875436);
insert into MapDB.servo values('E','A',6,5, 0.58125305);
insert into MapDB.servo values('B','E',5,4, 0.46875226);
insert into MapDB.servo values('E','E',4,3, 0.8437549);
insert into MapDB.servo values('B','A',4,2, 0.8437549);
insert into MapDB.servo values('B','D',5,4, 0.5062525);
insert into MapDB.servo values('C','C',4,2, 0.35625148);
insert into MapDB.servo values('A','A',5,3, 0.69375384);



insert into MapDB.servo values('C','E',4,3, 1.068751);
insert into MapDB.servo values('A','A',4,3, 1.1062483);
insert into MapDB.servo values('C','A',6,3, 0.5437528);
insert into MapDB.servo values('A','E',4,1, 0.2437507);
insert into MapDB.servo values('A','D',6,5, 0.5062525);
insert into MapDB.servo values('E','D',3,1, 0.9000011);
insert into MapDB.servo values('C','B',4,1, 0.431252);
insert into MapDB.servo values('B','D',3,2, 4.0999675);
insert into MapDB.servo values('B','B',4,3, 0.99375594);
insert into MapDB.servo values('B','C',4,2, 0.5062525);
insert into MapDB.servo values('A','E',3,2, 4.499986);
insert into MapDB.servo values('B','D',3,1, 3.899964);
insert into MapDB.servo values('D','B',5,4, 0.39375174);



insert into MapDB.servo values('C','C',4,1, 0.2437507);
insert into MapDB.servo values('C','D',4,2, 0.2437507);
insert into MapDB.servo values('E','B',4,1, 1.1812428);
insert into MapDB.servo values('D','B',3,1, 1.2999974);
insert into MapDB.servo values('E','B',6,5, 0.431252);
insert into MapDB.servo values('D','A',3,1, 2.499982);
insert into MapDB.servo values('A','D',5,4, 0.5062525);
insert into MapDB.servo values('C','A',4,1, 0.7312541);
insert into MapDB.servo values('C','D',6,5, 0.46875226);
insert into MapDB.servo values('B','A',4,3, 1.068751);
insert into MapDB.servo values('E','A',4,3, 1.2187401);
insert into MapDB.servo values('A','A',4,1, 0.8437549);
insert into MapDB.servo values('A','C',4,3, 0.99375594);



insert into MapDB.servo values('E','D',6,5, 0.31875122);
insert into MapDB.servo values('E','A',4,2, 0.99375594);
insert into MapDB.servo values('C','D',3,1, 1.4999949);
insert into MapDB.servo values('B','B',4,1, 0.58125305);
insert into MapDB.servo values('C','A',4,2, 0.76875436);
insert into MapDB.servo values('C','A',5,1, 0.5437528);
insert into MapDB.servo values('C','E',3,1, 1.2999974);
insert into MapDB.servo values('C','A',3,1, 4.299977);
insert into MapDB.servo values('C','A',4,3, 1.0312537);
insert into MapDB.servo values('C','C',3,1, 1.8999897);
insert into MapDB.servo values('D','A',5,4, 0.431252);
insert into MapDB.servo values('A','B',5,4, 0.58125305);
insert into MapDB.servo values('C','C',3,2, 4.299977);


insert into MapDB.servo values('E','D',5,4, 0.31875122);
insert into MapDB.servo values('D','C',4,3, 0.5437528);
insert into MapDB.servo values('E','E',6,5, 0.28125095);
insert into MapDB.servo values('D','B',4,2, 0.35625148);
insert into MapDB.servo values('A','D',4,2, 0.46875226);
insert into MapDB.servo values('B','B',6,5, 0.5437528);
insert into MapDB.servo values('A','B',4,1, 0.6187533);
insert into MapDB.servo values('A','C',5,4, 0.5062525);
insert into MapDB.servo values('B','E',4,1, 0.20625044);
insert into MapDB.servo values('C','B',3,1, 3.899964);
insert into MapDB.servo values('E','E',4,2, 0.5062525);
insert into MapDB.servo values('B','E',4,3, 1.1062483);
insert into MapDB.servo values('A','E',3,1, 3.899964);



insert into MapDB.servo values('A','B',4,2, 0.8062546);
insert into MapDB.servo values('A','C',3,1, 3.8999604);
insert into MapDB.servo values('E','C',3,2, 1.4999949);
insert into MapDB.servo values('B','A',3,1, 5.100014);
insert into MapDB.servo values('D','D',3,2, 1.4999949);
insert into MapDB.servo values('A','C',3,2, 4.6999955);
insert into MapDB.servo values('E','A',4,1, 0.88125515);
insert into MapDB.servo values('B','A',5,4, 0.8062546);
insert into MapDB.servo values('E','E',3,1, 0.7000007);
insert into MapDB.servo values('D','E',3,2, 0.9000011);
insert into MapDB.servo values('E','B',3,1, 1.4999949);
insert into MapDB.servo values('A','D',4,1, 0.2437507);
insert into MapDB.servo values('A','D',3,1, 4.0999675);


insert into MapDB.servo values('E','B',4,3, 0.99375594);
insert into MapDB.servo values('A','B',3,1, 4.6999955);
insert into MapDB.servo values('D','B',4,3, 0.58125305);
insert into MapDB.servo values('A','A',5,4, 0.8062546);
insert into MapDB.servo values('D','A',3,2, 2.6999795);
insert into MapDB.servo values('C','E',6,5, 0.46875226);
insert into MapDB.servo values('B','C',3,2, 4.499986);
insert into MapDB.servo values('B','E',3,1, 3.6999667);
insert into MapDB.servo values('C','D',4,3, 0.9562557);
insert into MapDB.servo values('A','B',3,2, 4.499986);
insert into MapDB.servo values('A','A',6,5, 0.8062546);

commit;

select count(*) from MapDB.provaC;
select count(*) from MapDB.servo;
