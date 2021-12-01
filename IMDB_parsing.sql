#Create database 
Create Database IMDB_ODS;
USE IMDB_ODS;

#Load Comedy data 
CREATE table IMDB_ODS_Comedy(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Comedy.csv' into TABLE IMDB_ODS_Comedy 
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Comedy;

#load Action-Comedy data 
CREATE table IMDB_ODS_Action_Comedy(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Action-Comedy.csv' into TABLE IMDB_ODS_Action_Comedy
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Action_Comedy;

#load Comedy_Romance
CREATE table IMDB_ODS_Comedy_Romance(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Comedy-Romance.csv' into TABLE IMDB_ODS_Comedy_Romance
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Comedy_Romance;

#load Fantasy
CREATE table IMDB_ODS_Fantasy(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Fantasy.csv' into TABLE IMDB_ODS_Fantasy
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Fantasy;

#load Adventure
CREATE table IMDB_ODS_Adventure(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Adventure.csv' into TABLE IMDB_ODS_Adventure
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Adventure;

#load Animation
CREATE table IMDB_ODS_Animation(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Animation.csv' into TABLE IMDB_ODS_Animation
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Animation;

#load Crime
CREATE table IMDB_ODS_Crime(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Crime.csv' into TABLE IMDB_ODS_Crime
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Crime;

#load Mystery
CREATE table IMDB_ODS_Mystery(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Mystery.csv' into TABLE IMDB_ODS_Mystery
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Mystery;

#load Drama
CREATE table IMDB_ODS_Drama(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Drama.csv' into TABLE IMDB_ODS_Drama
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Drama;

#load Thriller
CREATE table IMDB_ODS_Thriller(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Thriller.csv' into TABLE IMDB_ODS_Thriller
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Thriller;

#load Action
CREATE table IMDB_ODS_Action(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Action.csv' into TABLE IMDB_ODS_Action
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Action;

#load Romance
CREATE table IMDB_ODS_Romance(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Romance.csv' into TABLE IMDB_ODS_Romance
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Romance;

#load Horror
CREATE table IMDB_ODS_Horror(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Horror.csv' into TABLE IMDB_ODS_Horror
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Horror;

#load Sci-Fi
CREATE table IMDB_ODS_Sci_Fi(`index` int,Movies_name char(100),Year char(20),Certificate char(10),runtime int,genere char(200),rating float,Metascore INT,Description Char(200),Cast char(200),Votes int);
load data local INFILE '/Users/weixinfeng/Downloads/Sci-Fi.csv' into TABLE IMDB_ODS_Sci_Fi
fields terminated by ',' optionally enclosed by '"' escaped by '"'
LINES TERMINATED by '\n' 
ignore 1 lines;
select * from IMDB_ODS_Sci_Fi;


