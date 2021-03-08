create table Team(team_id integer not null unique,teamname varchar(255),ownername varchar(255),coachname varchar(255));
create table Player(Player_id integer not null,name varchar(255),dateOfBirth date,nationality varchar(255),skills varchar(255),runs integer,wickets integer,number_of_matches integer,team_id integer,PRIMARY KEY (Player_id),FOREIGN KEY (team_id) REFERENCES Team(team_id));
select * from Team;
select * from Player;

insert into Team values(111,'CSK','O1','C1');
insert into Team values(222,'MI','O2','C2');

insert into Player values(11,'Dhoni','1990-05-02','Indian','Bat',1000,25,54,111);
insert into Player values(22,'Sachin','1980-05-02','Indian','Bat',5000,50,84,222);