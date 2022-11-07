CREATE TABLE EPL(
	league_number int(4) AUTO_INCREMENT PRIMARY KEY,
	start_time varchar(100) comment '시작시간',
	end_time varchar(100) comment '종료시간',
	game_Progress_status varchar(100) comment '경기진행여부',
	game_hiredate date comment '경기 일자',
	play_stadium varchar(100) comment '경기장'
)

CREATE TABLE club(
	club_number int(4)AUTO_INCREMENT PRIMARY KEY,
	club_name varchar(100) comment '클럽명',
	club_history date comment '클럽 창단일',
	club_stadium varchar(100) comment '연고지',
	sponsor_name varchar(100) comment '스폰서'
)

CREATE TABLE customer(
customer_registration varchar(100)PRIMARY KEY,
customer_name varchar(10) comment '고객이름',
customer_age int(4) comment '고객나이',
customer_nation varchar(10) comment '국적',
customer_id int(4),
FOREIGN KEY (customer_id) REFERENCES reservation(customer_id) ON DELETE cascade
)

CREATE TABLE reservation(
customer_id int(4) comment '고객아이디' AUTO_INCREMENT PRIMARY KEY,
seat varchar(100) comment '좌석',
address varchar(100) comment '주소',
phone_number varchar(100) comment '고객연락처',
people_number int(4) comment '예약인원',
reservation_date date comment '예약일자',
league_number int(4),
foreign KEY (league_number) REFERENCES EPL(league_number) ON DELETE CASCADE
)

CREATE TABLE artist_Record(
record_Number varchar(5) PRIMARY KEY,
shooting int(5) comment '슈팅',
effective_shot int(5) comment '유효슈팅',
pass int(5) comment '패스',
goal int(5) comment '골',
assist int(5) comment '도움',
people_Numbers int(10) comment '예약인원',
staff_empno int(4) comment '관계자 사원번호',
league_number int(4) comment '경기번호',
artist_number int(4) comment '선수번호',
FOREIGN KEY (staff_Empno) REFERENCES club_staff(staff_Empno) ON DELETE CASCADE,
FOREIGN KEY (league_number) REFERENCES EPL(league_number) ON DELETE CASCADE,
FOREIGN KEY (artist_Number) REFERENCES artist(artist_Number) ON DELETE cascade
)

CREATE TABLE club_staff(
staff_empno int(4)PRIMARY KEY,
name varchar(100) comment '이름',
job varchar(100) comment '직책',
sal bigint(10) comment '급여',
Contract_date date comment '계약일자',
Resignation date comment '퇴사일자',
club_number int(4) comment '클럽번호',
FOREIGN KEY (club_number) REFERENCES club(club_number) ON DELETE cascade
)

CREATE TABLE matching(
matching_number int(4) AUTO_INCREMENT PRIMARY KEY,
home  int(4) comment '홈팀',
away  int(4) comment '원정팀',
game_record varchar(100) comment '경기기록',
league_number int(4) comment '경기번호',
FOREIGN KEY (league_number) REFERENCES EPL(league_number) ON DELETE cascade 
FOREIGN KEY (home) REFERENCES club(club_number) ON DELETE CASCADE,
FOREIGN KEY (away) REFERENCES club(club_number) ON DELETE CASCADE
)

-- CREATE TABLE artist_record(
-- record_number int(4) AUTO_INCREMENT PRIMARY KEY,
-- Shooting int(4) comment '슈팅',
-- effective_shooting int(4) comment '유효 슈팅',
-- pass int(4) comment '패스',
-- goals int(4) comment '득점',
-- assist int(4) comment '도움',
-- staff_empno int(4) comment '관계자 사원번호',
-- FOREIGN KEY (staff_empno) REFERENCES club_staff(staff_empno) ON DELETE CASCADE
-- )

CREATE TABLE artist(
artist_Number int(4) PRIMARY KEY,
name varchar(20) comment '선수이름',
uniform_Numbers  int(5) comment '등번호',
nation varchar(10) comment '국적',
age int(3) comment '나이',
position varchar(10) comment '포지션',
roster varchar(4) comment '선발여부',
transfer_fee bigint(10) comment '이적료',
weekly_salary bigint(10) comment '주급',
contract_start_date datetime comment '계약시작일',
contract_end_date datetime comment '해지일',
club_number int(4) comment '클럽 번호',
FOREIGN KEY (club_Number) REFERENCES club(club_Number) ON DELETE cascade
)

UPDATE club SET club_name = 'Manchester_United_F.C' WHERE club_number = 1 

INSERT INTO club(club_name,club_history,club_stadium,sponsor_name) VALUES ("Fulham F.C","1879-02-23" ,"Craven_Cottage","adidas")

INSERT INTO club(club_name,club_history,club_stadium,sponsor_name) VALUES ("Manchester United F.C","1878-03-05" ,"old_trafford","adidas")

INSERT INTO club(club_name,club_history,club_stadium,sponsor_name) VALUES ("Manchester City F.C","1894-04-16" ,"Etihad_Stadium","puma")

INSERT INTO club(club_name,club_history,club_stadium,sponsor_name) VALUES ("Arsenal FC","1886-10-10" ,"Emirates_Stadium","nike")

INSERT INTO club(club_name,club_history,club_stadium,sponsor_name) VALUES ("Leicester City FC","1884-07-21" ,"King_Power_Stadium","adidas")

INSERT INTO club(club_name,club_history,club_stadium,sponsor_name) VALUES ("Nottingham Forest FC","1865-04-17" ,"The_City_Ground","Macron")

INSERT INTO club(club_name,club_history,club_stadium,sponsor_name) VALUES ("Liverpool FC","1892-06-03" ,"Anfield","nike")

INSERT INTO artist(artist_number,name,uniform_Numbers,nation,age,club_number)
VALUES (1,"Marek Rodák",1,"Slovak Republic",25,1)

























insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (215,"Robert Sánchez",1,"Spain",24,"regular","GK",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (216,"Tariq Lamptey",2,"Ghana",22,'bench',"RB",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (217,"Adam Webster",4,"England",27,"regular","CB",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (218,"Lewis Carl Dunk",5,"England",30,"regular","CB",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (219,"Solly March",7,"England",28,"regular","RW",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (220,"Alexis Mac Allister",10,"Argentina",23,"regular","CM",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (221,"Leandro Trossard",11,"Belgium",27,"regular","RW",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (222,"Pascal Groß",13,"Germany",31,"regular","CF",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (223,"Adam Lallana",14,"England",34,"regular","CM",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (224,"Jakub Moder",15,"England",23,"candidate","CM",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (225,"Daniel Nii Tackie Mensah Welbeck",18,"England",31,"regular","CF",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (226,"Jeremy Sarmiento",19,"Ecuador",20,'bench',"RW",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (227,"Julio Enciso",20,"Paraguái",18,'bench',"CF",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (228,"Deniz Undav",21,"Germany",26,'bench',"ST",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (229,"Kaoru Mitoma",22,"Japan",25,"candidate","LW",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jason Steele",23,"England",32,"bench","GK",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (,"Moisés Caicedo",25,"Ecuador",20,"regular","CM",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (,"Billy Gilmour",27,"Scotland ",21,'bench',"CDM",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (,"Jan Paul van Hecke",29,"Netherlands",22,'bench',"CB",9) 

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (,"Pervis Estupiñán",30,"Ecuador",24,'bench',"LB",9)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values (,"Joël Veltman",34,"Netherlands",30,"regular","CB",9)

브라이튼









insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Alex McCarthy",1,"England",32,"candidate","GK",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Kyle Walker-Peters",2,"England",2,"regular","RB",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ainsley Maitland-Niles",3,"England",25,"regular","CM",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Lyanco",4,"Brazil",25,"candidate","CB",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Duje Caleta-Car",6,"Croatia",26,"regular","CB",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Joe Aribo",7,"Nigeria",26,"regular","CM",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"James Ward-Prowse",8,"England",27,"regular","CM",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Adam Armstrong",9,"England",25,"regular","ST",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ché Adams",10,"Scotland",26,"regular","ST",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Wiliy Caballero",13,"Argentina",41,"candidate","GK",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Romain Perraud",15,"French",25,"regular","LB",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Stuart Armstrong",17,"Scotland",30,'bench',"LW",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Sekou Mara",18,"French",20,"candidate","ST",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Moussa Djenepo",19,"Mali",24,'bench',"RW",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Tino Livramento",21,"England",19,'candidate',"RB",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Mohammed Salisu",22,"Ghana",23,"regular","CB",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Samuel Edozie",23,"Norway",19,'bench',"LW",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Mohamed Elyounoussi",24,"England",28,"regular","CM",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ibrahima Diallo",27,"French",23,'bench',"CM",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Juan Larios",28,"Spain",18,'bench',"LB",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Gavin Bazunu",31,"Ireland",20,"regular","GK",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Theo Walcott",32,"England",33,'bench',"RW",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Armel Bella-Kotchap",37,"Germany",20,'bench',"CB",10)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Roméo Lavia",45,"Belgium",18,"candidate","CDM",10)




소튼







insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"David Raya",1,"Spain",27,"regular","GK",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Aaron Hickey",2,"Scotland ",20,"candidate","RB",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Rico Henry",3,"England",25,"regular","LB",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Charlie Goode",4,"England",27,"candidate","CB",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ethan Pinnock",5,"Jamaica",29,"regular","CB",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Christian Nørgaard",6,"Denmark",28,"candidate","CDM",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Sergi Canós",7,"Spain",25,"candidate","RW",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Mathias Jensen",8,"Denmark",26,"regular","CM",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Josh Dasilva",10,"England",23,'bench',"CM",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Yoane Wissa",11,"Congo",26,'bench',"ST",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Mathias Jørgensen",13,"Denmark",32,"regular","CB",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Saman Ghoddos",14,"Iran",29,'bench',"CAM",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Frank Onyeka",15,"Nigeria",24,"regular","CM",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ben Mee",16,"England",16,"regular","CB",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ivan Toney",17,"England",26,"regular","ST",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Pontus Jansson",18,"Sweden",31,"candidate","CB",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Bryan Mbeumo",19,"Cameroun",23,"regular","LW",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Kristoffer Ajer",20,"Norway",24,'bench',"CB",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Thomas Strakosha",22,"Albania",27,"candidate","GK",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Keane Lewis-Potter",23,"England",21,'bench',"RW",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Mikkel Damsgaard",24,"Denmark",22,'bench',"LW",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Shandon Baptiste",26,"Grenada",24,'bench',"CM",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Vitaly Janelt",27,"Germany",24,"regular","CM",11)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Mads Roerslev",30,"Denmark",23,"regular","RB",11)

브랜트포드




insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Illan Meslier",1,"Spain",22,"regular","GK",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Luke Ayling",2,"England",31,'bench',"RB",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Junior Firpo",3,"Dominicana",26,"regular","LB",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Adam Forshaw",4,"England",31,"candidate","CM",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Robin Koch",5,"Germany",26,"regular","CB",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Liam Cooper",6,"Scotland",31,'bench',"CB",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Brenden Aaronson",7,"U.S.A",21,"regular","CAM",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Marc Roca",8,"Spain",25,"regular","CDM",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Patrick Bamford",9,"England",29,"regular","ST",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Crysencio Summerville",10,"Netherlands",20,"regular","RW",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jack Harrison",11,"England",25,'bench',"LW",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Tyler Adams",12,"U.S.A",23,"regular","CDM",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Kristoffer Klaesson",13,"Norway",21,'bench',"GK",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Diego Llorente",14,"Spain",29,"regular","CB",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Stuart Dallas",15," Norlin Airlann",31,"candidate","RB",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Sonny Perkins",16,"England",18,"candidate","ST",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Darko Gyabi",18,"England",18,"candidate","CM",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Rodrigo Moreno",19,"Spain",31,'bench',"CF",12) a

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Pascal Struijk",21,"Netherlands",23,"candidate","CB",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Joel Robles",22,"Spain",32,"candidate","GK",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Luis Sinisterra",23,"Colombia",23,"regular","LW",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Rasmus Kristensen",25,"Denmark",25,"regular","RB",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Wilfried Gnonto",29,"Italian",18,'bench',"CF",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Joe Gelhardt",30,"England",20,'bench',"ST",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Leo Hjelde",33,"Norway",19,"candidate","CB",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Cody Drameh",37,"England",20,"candidate","LB",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Sam Greenwood",42,"England",20,'bench',"CM",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Mateusz Klich",43,"Poland",32,"candidate","CM",12)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Archie Gray",63,"England",16,"candidate","CAM",12)



리즈





insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Emiliano Martinez",1,"Argentine ",30,"regular","GK",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Matty Cash",2,"Poland",25,'bench',"RB",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Diego Carlos",3,"Brazil",29,"candidate","CB",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ezri Konsa",4,"England",24,"regular","CB",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Tyrone Mings",5,"England",29,"regular","CB",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Douglas Luiz",6,"Brazil",24,"regular","CM",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"John McGinn",7,"Scotland",28"regular","CM",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Morgan Sanson",8,"French",28,'bench',"CM",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Danny Ings",9,"England",30,"regular","ST",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Emiliano Buendía",10,"Argentine",25,'bench',"RW",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ollie Watkins",11,"England",26,"regular","ST",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jed Steer",12,"England",30,"candidate","GK",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Calum Chambers",16,"England",27,'bench',"RB",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ludwig Augustinsson",17,"Sweden",28,"candidate","LB",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ashley Young",18,"England",37,"regular","RB",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Marvelous Nakamba",19,"Zimbabwe",28,'bench',"CDM",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jan Bednarek",20,"Poland",27,"regular","CB",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Philippe Coutinho",23,"Brazil",30,'bench',"LW",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Frédéric Guilbert",24,"French",27,"candidate","RB",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Robin Olsen",25,"Sweden",32,"candidate","GK",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Lucas Digne",27,"French",29,"candidate","LB",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Leon Bailey",31,"Jamaica",25,"regular","LW",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Leander Dendoncker",32,"Belgium",27,"regular","CDM",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Cameron Archer",35,"England",20,'bench',"ST",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jacob Ramsey",41,"England",21,"candidate","CM",13)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Boubacar Kamara",44,"French",22,"candidate","CDM",13)





아스톤빌라


























insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"José Sá",1,"Portuguese",29,"regular","GK",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Rayan Aït-Nouri",3,"French",21,"candidate","LB",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Nathan Collins",4,"Ireland",21,"regular","CB",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Boubacar Traoré",6,"Mali",21,"regular","CM",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Pedro Neto",7,"Portuguese",22,"candidate","RW",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Rúben Neves",8,"Portuguese",25,"regular","CDM",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Raúl Jiménez",9,"Mexican",31,"candidate","ST",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Daniel Podence",10,"Portuguese",27,"regular","LW",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Hwang Heechan",11,"Korea",26,'bench',"ST",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Matija Sarkic",13,"Montenegro",25,"candidate","GK",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Yerson Mosquera",14,"Colombia",21,"candidate","CB",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Gonçalo Guedes",17,"Portuguese",25,'bench',"RW",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Saša Kalajdžić",18,"Austria",25,"candidate","ST",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jonny Castro",19,"Spain",28,"candidate","LB",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Chiquinho",20,"Portuguese",22,"candidate","RW",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Nélson Semedo",22,"Portuguese",28,"regular","RB",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Maximilian Kilman",23,"England",25,"regular","CB",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Toti Gomes",24,"Portuguese",23,"candidate","CB",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Connor Ronan",25,"Ireland",24,'bench',"CM",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Matheus Nunes",27,"Portuguese",24,"regular","CM",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"João Moutinho",28,"Portuguese",36,'bench',"CM",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Diego Costa",29,"Spain",34,"regular","ST",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Adama Traoré",37,"Spain",26,"regular","RW",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jackson Smith",55,"England",21,"candidate","GK",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Joe Hodge",59,"England",20,'bench',"CDM",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Hugo Bueno",64,"Spain",20,"regular","LB",14)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Chem Campbell",77,"Wales",19,'bench',"RW",14)










울브스




insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Łukasz Fabiański",1,"Poland",37,"regular","GK",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ben Johnson",2,"England",22,"regular","RB",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Aaron Cresswell",3,"England",32,"regular","LB",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Kurt Zouma",4,"French",27,"regular","CB",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Vladimír Coufal",5,"Czech",30,'bench',"RB",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Gianluca Scamacca",7,"Italian",23,"regular","ST",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Pablo Fornals",8,"Spain",26,"regular","CAM",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Michail Antonio",9,"Jamaica",32,'bench',"ST",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Manuel Lanzini",10,"Argentina",29,'bench',"CAM",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Lucas Paquetá",11,"Brazil",25,"candidate","CM",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Flynn Downes",12,"England",23,"regular","CM",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Alphonse Areola",13,"French",29,'bench',"GK",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Maxwel Cornet",14,"Côte d'Ivoire",26,"candidate","CF",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Craig Dawson",15,"England",32,"candidate","CB",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jarrod Bowen",20,"England",25,"regular","RW",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Angelo Ogbonna",21,"Italian",34,'bench',"CB",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Saïd Benrahma",22,"Algeria",26,'bench',"LW",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Thilo Kehrer",24,"Germany",26,"regular","CB",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Nayef Aguerd",27,"Morocco",26,"candidate","CB",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Tomáš Souček",28,"Czech",27,"regular","CDM",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Conor Coventry",32,"Ireland",22,'bench',"CM",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Emerson Palmieri",33,"Italian",28,'bench',"LB",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Darren Randolph",35,"Ireland",35,'bench',"GK",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Declan Rice",41,"England",23,"regular","CDM",15)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Harrison Ashby",50,"Scotland",20,"candidate","RB",15)


웨스트햄




























insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jack Butland",1,"England",29,'bench',"GK",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Joel Ward",2,"England",32,"regular","RB",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Tyrick Mitchell",3,"England",23,'bench',"LB",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Luka Milivojević",4,"Serbia",31,'bench',"CDM",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"James Tomkins",5,"England",33,'bench',"CB",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Marc Guehi",6,"England",22,"regular","CB",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Michael Olise",7,"French",20,"regular","CAM",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jordan Ayew",9,"Ghana",31,"regular","ST",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Eberechi Eze",10,"England",24,"regular","CAM",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Dazet Wilfried Armel Zaha",11,"Côte d'Ivoire",29,"regular","RW",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Vicente Guaita Panadero",13,"Spain",35,"regular","GK",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jean-Philippe Mateta",14,"French",25,'bench',"ST",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jeffrey Schlupp",15,"Ghana",29,"regular","CM",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Joachim Andersen",16,"Denmark",27,"regular","CB",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Nathaniel Clyne",17,"England",31,'bench',"RB",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"James McArthur",18,"Scotland",35,'bench',"CM",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Will Hughes",19,"England",27,'bench',"CM",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Sam Johnstone",21,"England",29,"candidate","GK",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Odsonne Édouard",22,"French",24,"regular","ST",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Malcolm Ebiowei",23,"England",19,"RW",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Chris Richards",26,"U.S.A",22,'bench',"CB",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Cheick Doucouré",28,"Mali",22,"regular","CDM",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Nathan Ferguson",36,"England",22,'bench',"CB",16)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jaïro Riedewald",44,"Netherlands",26,'bench',"LB",16)

수정궁
















insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Kieran Trippier",2,"England",22,"regular","RB",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Paul Dummett",3,"England",31,"candidate","LB",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Sven Botman",4,"Netherlands",22,"regular","CB",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Fabian Schär",5,"Swiss",30,"regular","CB",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jamaal Lascelles",6,"England",28,'bench',"CB",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Joelinton",7,"Brazil",26,"regular","CM",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jonjo Shelvey",8,"England",30,'bench',"CM",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Callum Wilson",9,"England",30,"regular","ST",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Allan Saint-Maximin",10,"French",25,'bench',"RW",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Matt Ritchie",11,"Scotland",33,"candidate","LW",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jamal Lewis",12,"England",24,'bench',"LB",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Matt Targett",13,"England",27,'bench',"LB",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Alexander Isak",14,"Sweden",23,"candidate","ST",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Emil Krafth",17,"Sweden",28,"candidate","RB",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Loris Karius",18,"Germany",29,"candidate","GK",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Javier Manquillo",19,"Spain",28,'bench',"RB",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Chris Wood",20,"New Zealand",30,'bench',"ST",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ryan Fraser",21,"Scotland",28,"candidate","RW",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Nick Pope",22,"England",30,"regular","GK",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jacob Murphy",23,"England",27,"regular","LW",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Miguel Almirón",24,"Paraguay",28,"regular","RW",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Karl Darlow",26,"England",32,'bench',"GK",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Joe Willock",28,"England",23,'bench',"CM",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Mark Gillespie",29,"England",30,'bench',"GK",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Elliot Anderson",32,"England",19,"candidate","CAM",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Dan Burn",33,"England",30,"regular","CB",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Sean Longstaff",36,"England",24,"regular","CM",17)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Bruno Guimarães",39,"Brazil",24,"regular","CDM",17)




뉴캐슬










insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Hugo Lloris",1,"French",35,"regular","GK",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Matt Doherty",2,"Ireland",30,"regular","RB",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Oliver Skipp",4,"England",22,'bench',"CDM",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Pierre-Emile Højbjerg",5,"Denmark",27,"regular","CM",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Davinson Sánchez",6,"Colombia",26,'bench',"CB",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Son Heung-Min",7,"Korea",30,"regular","LW",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Richarlison",9,"Brazil",25,"regular","RW",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Harry Kane",10,"England",29,"regular","ST",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Bryan Gil",11,"Spain",21,"candidate","LW",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Emerson Royal",12,"Brazil",23,'bench',"RB",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ivan Perišić",14,"Croatia",33,"regular","LB",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Eric Dier",15,"England",28,"regular","CDM",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Cristian Romero",17,"Argentina",29,"regular","CB",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ryan Sessegnon",19,"England",22,'bench',"LB",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Fraser Forster",20,"England",34,'bench',"GK",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Dejan Kulusevski",21,"Sweden",22,'bench',"RW",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Djed Spence",24,"England",22,'bench',"RB",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Japhet Tanganga",25,"England",23,'bench',"RB",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Lucas Moura",27,"Brazil",30,'bench',"LW",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Pape Sarr",29,"Senegal",20,'bench',"CDM",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Rodrigo Bentancur",30,"Uruguay",25,"regular","CM",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ben Davies",33,"Wales",29,"regular","LB",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Clément Lenglet",34,"French",27,"candidate","CB",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Yves Bissouma",38,"Mali",26,"candidate","CDM",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Brandon Austin",40,"England",23,"candidate","GK",18)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Harvey White",42,"England",21,"candidate","CDM",18)


닭집









insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Mark Travers",1,"Ireland",23,"candidate","GK",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ryan Fredericks",2,"England",30,"regular","RB",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jack Stephens",3,"England",28,"candidate","ㅊB",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Lewis Cook",4,"England",25,'regular',"CM",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Lloyd Kelly",5,"England",24,"candidate","CB",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Chris Mepham",6,"Wales",26,'regular',"CB",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"David Brooks",7,"Wales",25,"bench","LW",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jefferson Lerma",8,"Colombia",27,'regular',"CDM",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Dominic Solanke",9,"England",25,"regular","ST",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ryan Christie",10,"Scotland",27,"regular","CAM",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Emiliano Marcondes",11,"Denmark",27,"candidate","CM",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Neto Murara",13,"Brazil",33,"regular","GK",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Joe Rothwell",14,"England",27,"bench","CM",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Adam Smith",15,"England",31,"regular","RB",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Marcus Tavernier",16,"England",23,"regular","RW",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jack Stacey",17,"England",26,"bench","RB",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jamal Akua Lowe",18,"Jamaica",28,'bench',"RW",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Junior Stanislas",19,"England",32,'bench',"LW",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Kieffer Moore",21,"Wales",30,'bench',"ST",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ben Pearson",22,"England",27,'bench',"CM",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Marcos Senesi",25,"Argentina",25,'regular',"CB",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Philip Billing",29,"Denmark",26,'regular',"CM",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jaidon Anthony",32,"England",22,"candidate","RW",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jordan Zemura",33,"Zimbabwe",23,"candidate","LB",19)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Will Dennis",40,"England",22,"candidate","GK",19)





본머스









insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Kepa Arrizabalaga",1,"Spain",28,"regular","GK",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Jorginho",5,"Italian",30,"regular","CM",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Thiago Silva",6,"Brazil",38,'bench',"CB",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"N'Golo Kanté",7,"French",31,"bench","CDM",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Mateo Kovačić",8,"Croatia",28,"candidate","CM",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Pierre-Emerick Aubameyang",9,"Gabonese",33,"bench","ST",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Christian Pulisic",10,"U.S.A",24,"bench","RW",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ruben Loftus-Cheek",12,"England",26,'regular',"CM",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Marcus Bettinelli",13,"England",30,"candidate","GK",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Trevoh Chalobah",14,"England",23,"regular","CB",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Édouard Mendy",16,"Senegal",30,"bench","GK",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Raheem Sterling",17,"England",27,"bench","LW",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Armando Broja",18,"Albania",21,"regular","ST",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Mason Mount",19,"England",23,'regular',"CAM",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Denis Zakaria",20,"Swiss",34,'bench',"CDM",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Ben Chilwell",21,"England",25,'bench',"LB",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Hakim Ziyech",22,"Morocco",29,'bench',"RW",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Conor Gallagher",23,"England",22,'regular',"CM",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Reece James",24,"England",22,'bench',"RB",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Kalidou Koulibaly",26,"Senegal",31,'regular',"CB",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"César Azpilicueta",28,"Spain",33,"regular","RB",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Kai Havertz",29,"Germany",23,"regular","CAM",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Carney Chukwuemeka",30,"England",19,"candidate","CM",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Marc Cucurella",32,"Spain",24,"regular","LB",20)

insert into artist (artisrt_number,name,uniform_numbers,nation,age,roster,positon,club_number) values  (,"Wesley Fofana",33,"French",21,"candidate","CB",20)



첼시