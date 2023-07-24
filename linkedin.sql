-- drop database linkedin
drop database linkedin;

-- create database linkedin 
create  database linkedin;

-- use linkedin 
use linkedin;

-- #create admin table 
create table admin(
    id int,
    name varchar(255),
    created_at timestamp,
    updated_at timestamp,
    primary key (id)
);

-- #insert values into admin table
insert into admin(id,name,created_at,updated_at)
values
(1,"balamurugan",now(),now());

-- #create table users
create table if not exists users(
     id int not null AUTO_INCREMENT,
    name varchar(255),
    dob date,
    bio varchar(255),
    password varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    primary key (id),
    foreign key(created_by_id)references admin(id),
    foreign key (updated_by_id) references admin(id)
    );

-- #insert values into users table
insert into users(name,dob,bio,password,created_at,updated_at, created_by_id, updated_by_id)
values ("bala","2002/12/12","always positive","bala@873",now(),now(),1,1),
("sanjay","2003/11/09","don't trust anyone","sun%92",now(),now(),1,1),
("jas","2001/03/12","travel to the world","jas*247",now(),now(),1,1),
("Rishi","2002/12/12","sunday funday","rish+23",now(),now(),1,1),
("tamil","2000/02/29","inner peace","tamil&374",now(),now(),1,1),
("arthi","1995/11/03","stay tuned","art@587",now(),now(),1,1),
("raji","1979/01/23","beautiful diaster","raj&234",now(),now(),1,1),
("guna","1990/07/12","preety awesome","gun*389",now(),now(),1,1),
("vijay","2002/12/27","living life","viji#878",now(),now(),1,1),
("gowtham","1989/04/17","simply happy","gow@524",now(),now(),1,1),
("vicky","1999/04/19","golden days","vic.2343",now(),now(),1,1),
("lithish","1992/06/19","try again","lit@522",now(),now(),1,1),
("venki","1986/07/12","be kind","venki@867",now(),now(),1,1),
("kumar","1992/09/27","it's just a vibe","kumar*8247",now(),now(),1,1),
("akash","2003/12/05","making history","akash@252",now(),now(),1,1),
("lokesh","2001/01/29","self love","loki@432",now(),now(),1,1),
("yokesh","2000/05/12","don't forget your fav person","yokesh@432",now(),now(),1,1),
("balaji","2002/12/12","music is  my sanity","baal@2413",now(),now(),1,1),
("mani","1992/05/09","own less live more","mani@2342",now(),now(),1,1),
("elumalai","2000/03/11","don't go back","malai@777",now(),now(),1,1),
("selvam","1993/05/30","enjoying life","selvam@311",now(),now(),1,1),
("avinash","2002/12/12","never settle","avi@3341",now(),now(),1,1),
("sowmiya","1994/02/18","big sunset girl","sowmi@8149",now(),now(),1,1),
("jayanthi","1996/03/11","daddy forever","jaya@0139",now(),now(),1,1),
("prithi","2001/09/07","all we have is now","prithi@813",now(),now(),1,1);

-- create table emails 
create table  if not exists emails(
    id int not null AUTO_INCREMENT,
    user_id int,
    name varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    primary key (id),
    foreign key (user_id)references users(id),
    foreign key(created_by_id)references admin(id),
    foreign key (updated_by_id) references admin(id)
);

-- #insert values into emails table 
insert into emails(user_id,name,created_at,updated_at,created_by_id,updated_by_id)
values (1,"balar@143",now(),now(),1,1),
(1,"balamuruganr@143",now(),now(),1,1),
(2,"sanm@123",now(),now(),1,1),
(2,"sanjaym@000",now(),now(),1,1),
(3,"rishia@001",now(),now(),1,1),
(3,"rishikantha@333",now(),now(),1,1),
(4,"tamilk@178",now(),now(),1,1),
(4,"tamilselvank@143",now(),now(),1,1),
(5,"arthir@111",now(),now(),1,1),
(5,"arthikar@104",now(),now(),1,1),
(6,"rajis@555",now(),now(),1,1),
(6,"rajkumars@..011",now(),now(),1,1),
(7,"gunad@143",now(),now(),1,1),
(7,"gunasekard@107",now(),now(),1,1),
(8,"vijayk@000",now(),now(),1,1),
(9,"vijaykumark@123",now(),now(),1,1),
(10,"gows@666",now(),now(),1,1),
(10,"gowthams@8008",now(),now(),1,1),
(11,"vickys@*234",now(),now(),1,1),
(11,"vicknesvarans@233",now(),now(),1,1),
(12,"liths@143",now(),now(),1,1),
(12,"lithiss@088",now(),now(),1,1),
(13,"venkateshe@143",now(),now(),1,1),
(13,"venkie@133",now(),now(),1,1),
(14,"kumarm@1423",now(),now(),1,1),
(14,"kokikumarm@007",now(),now(),1,1),
(15,"akashn@tn3",now(),now(),1,1),
(15,"akaskrn@143",now(),now(),1,1),
(16,"lokic@103",now(),now(),1,1),
(16,"lokeshc@123",now(),now(),1,1),
(17,"yokiv@1093",now(),now(),1,1),
(17,"yokeshv@1243",now(),now(),1,1),
(18,"balaa@1314",now(),now(),1,1),
(18,"balajia@455",now(),now(),1,1),
(19,"malair@007",now(),now(),1,1),
(19,"elumalair@107",now(),now(),1,1),
(20,"selvamm@143",now(),now(),1,1),
(21,"selavm@101",now(),now(),1,1),
(22,"avih@666",now(),now(),1,1),
(22,"avinashh@234",now(),now(),1,1),
(23,"sows@1231",now(),now(),1,1),
(23,"sowmiyas@6536",now(),now(),1,1),
(24,"jayal420",now(),now(),1,1),
(24,"jayanthil@421",now(),now(),1,1),
(25,"prithin@no1",now(),now(),1,1),
(25,"prithisrin@420",now(),now(),1,1);


-- #create table type_education
create table  if not exists type_education(
id int not null AUTO_INCREMENT,
name varchar(255),
created_at timestamp,
updated_at timestamp,
created_by_id int,
updated_by_id int,
primary key (id),
foreign key(created_by_id)references admin(id),
foreign key (updated_by_id) references admin(id)
);
      
          
-- #insert values into type_education table
insert into type_education(name,created_at,updated_at,created_by_id,updated_by_id)
values("School",now(),now(),1,1),
("ITI",now(),now(),1,1),
("Diploma",now(),now(),1,1),
("College",now(),now(),1,1),
("Certification_coureses",now(),now(),1,1);

-- #create table educations 
create table  if not exists  educations(
id int not null AUTO_INCREMENT,
user_id int,
type_education_id int,
qualifications varchar(255),
institute_name varchar(255),
start_date date,
end_date date,
created_at timestamp,
updated_at timestamp,
created_by_id int,
updated_by_id int,
primary key (id),
foreign key (user_id)references users(id),
foreign key(type_education_id) references type_education (id),
foreign key(created_by_id)references admin(id),
foreign key (updated_by_id) references admin(id)
);

-- #insert values into educations table
insert into educations(user_id,type_education_id,qualifications,institute_name,start_date,end_date,created_at,updated_at,created_by_id,updated_by_id)
values (1,1,"10th","Tindivanam Hr sec school","2018-05-02","2019-05-02",now(),now(),1,1),
(2,1,"12th","villupuram Hr sec school","2014-04-12","2015-03-09",now(),now(),1,1),
(3,2,"catering","salem Hr sec school","2018-05-02","2019-05-02",now(),now(),1,1),
(4,3,"DEEE","CPT college","2013-09-05","2015-04-29",now(),now(),1,1),
(5,4,"B.COM","koyambathur vallimai college","2012-06-12","2015-06-24",now(),now(),1,1),
(6,3,"DEEE","CPT college","2016-07-02","2019-06-10",now(),now(),1,1),
(7,2,"electrical","Guindy ITI college","2015-06-02","2017-05-20",now(),now(),1,1),
(8,2,"mechanical","Tindivanam ITI college","2018-05-02","2020-05-02",now(),now(),1,1),
(9,2,"welder","villupuram III college","2016-06-02","2018-09-28",now(),now(),1,1),
(10,2,"catering","Thiruvanmiyur ITI college","2018-07-08","2020-06-23",now(),now(),1,1),
(11,3,"Dcivil","Tindivanam govt college","2010-07-12","2013-05-18",now(),now(),1,1),
(12,4,"BA tamil","vettavalam loyala college","2013-07-12","2016-05-25",now(),now(),1,1),
(13,1,"10th","vettavalam boys Hr sec school","2018-05-02","2019-05-02",now(),now(),1,1),
(14,3,"DECE","CPT college","2019-07-02","2022-05-12",now(),now(),1,1),
(15,5,"JS","veerapandi villupuram","2020-12-02","2021-05-18",now(),now(),1,1),
(16,1,"12th","Jai gopal govt Hr sec school","2013-05-02","2014-05-02",now(),now(),1,1),
(17,4,"BA english","","2009-07-02","2012-05-20",now(),now(),1,1),
(18,4,"BSC","kumaran college","2012-08-02","2016-04-02",now(),now(),1,1),
(19,1,"12th","kodambakkam Hr sec school","2018-05-02","2019-05-02",now(),now(),1,1),
(20,3,"DCSC","CPT college","2014-07-02","2017-05-07",now(),now(),1,1),
(21,5,"DBMS","tambaram chennai","2019-09-24","2020-04-02",now(),now(),1,1),
(22,1,"10th","Tindivanam Hr sec school","2013-05-02","2014-05-02",now(),now(),1,1),
(23,4,"BSC","Arunai womens college","2010-06-02","2013-04-02",now(),now(),1,1),
(24,5,"Auto cadd","kodambakkam chennai","2015-10-11","2016-04-16",now(),now(),1,1),
(25,4,"BCOM","valiyamai womens college","2013-07-09","2016-05-17",now(),now(),1,1);

-- #create table work_experience;
create table  if not exists work_experience(
    id int not null AUTO_INCREMENT,
    user_id int,
    name varchar (255),
    start_date date,
    end_date date,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    primary key (id),
    foreign key (user_id)references users(id),
    foreign key(created_by_id)references admin(id),
    foreign key (updated_by_id) references admin(id)
);

-- #insert values into work_experience table
insert into work_experience(user_id,name,start_date,end_date,created_at,updated_at,created_by_id,updated_by_id)
values(1,"kone elevator","2021-01-26","2021-04-22",now(),now(),1,1),
(2,"motor manufacturing company","2016-09-12","2019-12-12",now(),now(),1,1),
(3,"star hotel","2019-07-12","2020-04-30",now(),now(),1,1),
(4,"HDFC bank","2016-01-20","2019-02-28",now(),now(),1,1),
(5,"HCL","2016-02-16","2017-12-29",now(),now(),1,1),
(6,"amazon","2019-10-12","2020-12-27",now(),now(),1,1),
(7,"welding company","2017-09-10","2019-10-28",now(),now(),1,1),
(8,"diameler","2020-10-02","2021-10-12",now(),now(),1,1),
(9,"oil company","2019-01-12","2020-04-29",now(),now(),1,1),
(10,"yomohiden biriyani hotel","2014-02-18","2016-05-22",now(),now(),1,1),
(11,"Royal enfield","2013-08-20","2015-04-04",now(),now(),1,1),
(12,"hyundai company","2017-01-10","2018-04-20",now(),now(),1,1),
(13,"saravana store","2019-10-02","2020-10-03",now(),now(),1,1),
(14,"accurate products","2022-07-12","2022-11-29",now(),now(),1,1),
(15,"wipro","2021-07-12","2022-06-12",now(),now(),1,1),
(16,"welding company","2019-03-12","2021-09-29",now(),now(),1,1),
(17,"tyre company","2014-07-20","2015-12-17",now(),now(),1,1),
(18,"HDFC bank","2016-09-17","2018-01-18",now(),now(),1,1),
(19,"super market","2019-09-12","2020-04-22",now(),now(),1,1),
(20,"Punjab national bank","2017-10-12","2020-12-03",now(),now(),1,1),
(21,"accenture","2020-05-12","2021-09-29",now(),now(),1,1),
(22,"super market","2014-06-26","2021-10-09",now(),now(),1,1),
(23,"IOB","2014-01-12","2021-10-04",now(),now(),1,1),
(24,"jasmine infotech","2016-07-19","2018-04-03",now(),now(),1,1),
(25,"axis bank","2016-08-03","2018-10-18",now(),now(),1,1);


-- #create packages table 
create table  if not exists packages(
id int not null AUTO_INCREMENT,
name varchar(255),
created_at timestamp,
updated_at timestamp,
created_by_id int,
updated_by_id int,
primary key (id),
foreign key(created_by_id)references admin(id),
foreign key (updated_by_id) references admin(id)
);

-- #insert values into packages table 
insert into packages(id,name,created_at,updated_at,created_by_id,updated_by_id)
values(1,"three_month",now(),now(),1,1),
(2,"six_month",now(),now(),1,1),
(3,"nine_month",now(),now(),1,1),
(4,"twelve_month",now(),now(),1,1);




-- #create subscription table
create table  if not exists subscription(
id int not null AUTO_INCREMENT,
user_id int,
valid_on date,
is_active int,
package_id int,
created_at timestamp,
updated_at timestamp,
created_by_id int,
updated_by_id int,
primary key (id),
foreign key (package_id)references packages(id),
foreign key (user_id)references users(id),
foreign key(created_by_id)references admin(id),
foreign key (updated_by_id) references admin(id)
);


-- #insert values  into subscription table
insert into subscription(user_id,valid_on,is_active,package_id,created_at,updated_at,created_by_id,updated_by_id)
values (1,'2023-04-12',1,2,now(),now(),1,1),
(2,'2010-12-12',0,4,now(),now(),1,1),
(3,'2022-9-12',1,3,now(),now(),1,1),
(4,'2023-03-12',1,2,now(),now(),1,1),
(5,'2022-12-12',0,2,now(),now(),1,1),
(6,'2022-12-25',1,3,now(),now(),1,1),
(7,'2021-1-12',0,4,now(),now(),1,1),
(8,'2022-04-12',0,4,now(),now(),1,1),
(9,'2022-11-23',1,2,now(),now(),1,1),
(10,'2022-12-12',1,3,now(),now(),1,1),
(11,'2020-1-21',0,1,now(),now(),1,1),
(12,'2021-05-09',0,3,now(),now(),1,1),
(13,'2022-11-30',1,4,now(),now(),1,1),
(14,'2019-03-12',0,1,now(),now(),1,1),
(15,'2021-07-12',0,2,now(),now(),1,1),
(16,'2022-12-21',1,1,now(),now(),1,1),
(17,'2022-02-17',0,3,now(),now(),1,1),
(18,'2022-11-29',1,1,now(),now(),1,1),
(19,'2020-12-15',0,4,now(),now(),1,1),
(20,'2022-12-17',1,2,now(),now(),1,1),
(21,'2018-06-12',0,3,now(),now(),1,1),
(22,'2017-01-19',0,1,now(),now(),1,1),
(23,'2022-12-09',1,3,now(),now(),1,1),
(24,'2021-12-12',0,4,now(),now(),1,1),
(25,'2022-09-07',1,4,now(),now(),1,1);

-- #create table post_type 
create table  if not exists post_type(
    id int not null AUTO_INCREMENT,
    type varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    primary key (id),
    foreign key(created_by_id)references admin(id),
    foreign key (updated_by_id) references admin(id)
    );

 -- #insert values  into post_type table
insert into post_type(type,created_at,updated_at,created_by_id,updated_by_id)
values ("photo",now(),now(),1,1),
("video",now(),now(),1,1),
("audio",now(),now(),1,1),
("content",now(),now(),1,1);

-- #create posts table 
create table   if not exists posts(
    id int not null AUTO_INCREMENT,
    user_id int,
    description varchar(255),
    post_type_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    primary key(id),
	foreign key (post_type_id)references post_type(id),
    foreign key (user_id)references users(id),
    foreign key(created_by_id)references admin(id),
    foreign key (updated_by_id) references admin(id)
    );

-- #insert values  into posts table 
insert into posts(user_id,description,post_type_id,created_at,updated_at,created_by_id,updated_by_id)
values(1,"smile is best medicine",2,now(),now(),1,1),
(23,"coming soon",4,now(),now(),1,1),
(14,"just me ",2,now(),now(),1,1),
(12,"word hard play hard",2,now(),now(),1,1),
(25,"sunshine is the best medicine",1,now(),now(),1,1),
(12,"dream big",1,now(),now(),1,1),
(21,"good vibes only",2,now(),now(),1,1),
(13,"another trip around the sun",3,now(),now(),1,1),
(16,"laughing on the inside",2,now(),now(),1,1),
(18,"november rain",1,now(),now(),1,1),
(24,"let it snow",2,now(),now(),1,1),
(19,"very  boring in my life",2,now(),now(),1,1),
(17,"small pleasures",4,now(),now(),1,1),
(15,"life is a beach",1,now(),now(),1,1),
(12,"I am kind of a big deal ",2,now(),now(),1,1),
(03,"vacation mode",4,now(),now(),1,1),
(05,"living my best life",3,now(),now(),1,1),
(07,"some day are better than others",2,now(),now(),1,1),
(08,"fire hazard",1,now(),now(),1,1),
(11,"beast movie",4,now(),now(),1,1),
(10,"always on your team",3,now(),now(),1,1),
(23,"everything I do, I do it for you",2,now(),now(),1,1),
(06,"I am going to vacation",4,now(),now(),1,1),
(04,"this is my first post",1,now(),now(),1,1),
(02,"me myself and I",2,now(),now(),1,1);


-- #create table views 
create table  if not exists views (
    id int not null AUTO_INCREMENT,
    user_id int,
    post_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    primary key (id),
    foreign key (user_id)references users(id),
    foreign key (post_id)references posts(id),
    foreign key(created_by_id)references admin(id),
    foreign key (updated_by_id) references admin(id)
);

-- #insert values into views table 
insert into views(user_id,post_id,created_at,updated_at,created_by_id,updated_by_id)
values (2,1,now(),now(),1,1),   
(22,2,now(),now(),1,1),
(5,12,now(),now(),1,1),
(8,6,now(),now(),1,1),
(24,3,now(),now(),1,1),
(19,10,now(),now(),1,1),
(1,3,now(),now(),1,1),
(9,3,now(),now(),1,1),
(20,3,now(),now(),1,1),
(22,4,now(),now(),1,1),
(25,4,now(),now(),1,1),
(21,4,now(),now(),1,1),
(17,24,now(),now(),1,1),
(14,5,now(),now(),1,1),
(18,5,now(),now(),1,1),
(6,16,now(),now(),1,1),
(7,20,now(),now(),1,1),
(10,5,now(),now(),1,1),
(24,3,now(),now(),1,1),
(13,7,now(),now(),1,1),
(16,7,now(),now(),1,1),
(3,7,now(),now(),1,1),
(10,15,now(),now(),1,1),
(24,15,now(),now(),1,1),
(3,15,now(),now(),1,1),
(16,15,now(),now(),1,1),
(20,22,now(),now(),1,1),
(11,22,now(),now(),1,1),
(4,22,now(),now(),1,1),
(15,22,now(),now(),1,1),
(2,21,now(),now(),1,1),
(12,21,now(),now(),1,1),
(3,25,now(),now(),1,1),
(24,25,now(),now(),1,1),
(9,23,now(),now(),1,1),
(16,23,now(),now(),1,1),
(5,19,now(),now(),1,1),
(16,19,now(),now(),1,1),
(23,18,now(),now(),1,1),
(14,18,now(),now(),1,1),
(2,17,now(),now(),1,1),
(12,17,now(),now(),1,1),
(7,15,now(),now(),1,1),
(22,15,now(),now(),1,1),
(12,14,now(),now(),1,1),
(19,14,now(),now(),1,1),
(2,13,now(),now(),1,1),
(22,13,now(),now(),1,1),
(1,11,now(),now(),1,1),
(25,11,now(),now(),1,1),
(23,8,now(),now(),1,1),
(19,8,now(),now(),1,1),
(2,8,now(),now(),1,1),
(5,8,now(),now(),1,1),
(17,9,now(),now(),1,1),
(12,9,now(),now(),1,1),
(22,9,now(),now(),1,1),
(25,9,now(),now(),1,1);


-- #create table likes
 create table  if not exists likes(
    id int not null AUTO_INCREMENT,
    user_id int,
    post_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    primary key (id),
    foreign key (user_id)references users(id),
    foreign key (post_id)references posts(id),
    foreign key(created_by_id)references admin(id),
    foreign key (updated_by_id) references admin(id)
 );

-- #insert values into likes table
insert into likes(user_id,post_id,created_at,updated_at,created_by_id,updated_by_id)
values (2,1,now(),now(),1,1),
(22,2,now(),now(),1,1),
(5,12,now(),now(),1,1),
(8,6,now(),now(),1,1),
(24,3,now(),now(),1,1),
(1,3,now(),now(),1,1),
(20,3,now(),now(),1,1),
(19,10,now(),now(),1,1),
(22,4,now(),now(),1,1),
(25,4,now(),now(),1,1),
(21,4,now(),now(),1,1),
(13,7,now(),now(),1,1),
(3,7,now(),now(),1,1),
(16,7,now(),now(),1,1),
(17,24,now(),now(),1,1),
(10,15,now(),now(),1,1),
(24,15,now(),now(),1,1),
(6,16,now(),now(),1,1),
(16,15,now(),now(),1,1),
(3,15,now(),now(),1,1),
(20,22,now(),now(),1,1),
(11,22,now(),now(),1,1),
(4,22,now(),now(),1,1),
(15,22,now(),now(),1,1),
(2,21,now(),now(),1,1),
(12,21,now(),now(),1,1),
(2,22,now(),now(),1,1),
(12,22,now(),now(),1,1),
(15,22,now(),now(),1,1),
(2,21,now(),now(),1,1),
(12,21,now(),now(),1,1),
(3,25,now(),now(),1,1),
(24,25,now(),now(),1,1),
(9,23,now(),now(),1,1),
(16,23,now(),now(),1,1),
(5,19,now(),now(),1,1),
(16,19,now(),now(),1,1),
(23,18,now(),now(),1,1),
(14,18,now(),now(),1,1),
(2,17,now(),now(),1,1),
(12,17,now(),now(),1,1),
(7,15,now(),now(),1,1),
(22,15,now(),now(),1,1),
(12,14,now(),now(),1,1),
(19,14,now(),now(),1,1),
(2,13,now(),now(),1,1),
(22,13,now(),now(),1,1),
(1,11,now(),now(),1,1),
(25,11,now(),now(),1,1),
(23,8,now(),now(),1,1),
(19,8,now(),now(),1,1),
(2,8,now(),now(),1,1),
(5,8,now(),now(),1,1),
(17,9,now(),now(),1,1),
(12,9,now(),now(),1,1),
(22,9,now(),now(),1,1),
(25,9,now(),now(),1,1);

-- #create table comments 
create table  if not exists  comments(
    id int not null AUTO_INCREMENT,
    user_id int,
    post_id int,
    comment_content varchar(255),
    comment_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    primary key (id),
    foreign key (user_id)references users(id),
    foreign key (post_id)references posts(id),
    foreign key (comment_id)references comments(id),
    foreign key(created_by_id)references admin(id),
    foreign key (updated_by_id) references admin(id)
);

-- insert values into comments table
insert into comments(user_id,post_id,comment_content,comment_id,created_at,updated_at,created_by_id,updated_by_id)
values(2,1,"yeah You are right",null,now(),now(),1,1),
(1,1,"thanks friend",1,now(),now(),1,1),
(22,2,"I'm waiting",null,now(),now(),1,1),
(23,2,"ok buddy",3,now(),now(),1,1),
(7,20,"How was the movie?",null,now(),now(),1,1),
(11,20,"super",5,now(),now(),1,1),
(6,16,"happy journey",null,now(),now(),1,1),
(3,16,"thanks jas",7,now(),now(),1,1),
(17,24,"keep it up",null,now(),now(),1,1),
(04,25,"thanks for your support",9,now(),now(),1,1),
(5,12,"what happen",null,now(),now(),1,1),
(19,12,"nothing is good in my life",11,now(),now(),1,1),
(19,10,"what  is the condition in your location?",null,now(),now(),1,1),
(18,10,"here is heavy rain ",13,now(),now(),1,1),
(8,6,"super bro",null,now(),now(),1,1),
(12,6,"thanks bro",15,now(),now(),1,1);



 












































    
    
    
    
    
    
    
    


