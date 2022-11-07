CREATE TABLE EPL(
	league_number int(4) AUTO_INCREMENT PRIMARY KEY,
	start_time varchar(100) comment '시작시간',
	end_time varchar(100) comment '종료시간',
	game_Progress_status varchar(100) comment '경기진행여부',
	game_hiredate datetime comment '경기 일자',
	play_stadium varchar(100) comment '경기장'
)

CREATE TABLE club(
	club_number int(4)AUTO_INCREMENT PRIMARY KEY,
	club_name varchar(100) comment '클럽명',
	club_history datetime comment '클럽 창단일',
	club_stadium varchar(100) comment '연고지',
	sponsor_name varchar(100) comment '스폰서',
	league_number int(4) comment '경기번호',
	foreign KEY (league_number) REFERENCES EPL(league_number) ON DELETE cascade
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

INSERT into