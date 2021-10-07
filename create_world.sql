use deltarune;

CREATE TABLE member (
 id INT NOT NULL PRIMARY KEY,
 name VARCHAR(128),
 world VARCHAR(128),
 LV INT
);

insert into member VALUES(1001,"kris","lightner",1);
insert into member VALUES(1002,"susie","lightner",10);
insert into member VALUES(1003,"ralsei","lightner",1);
insert into member VALUES(2001,"berdly","lightner",8);
insert into member VALUES(2002,"noelle","lightner",5);
insert into member VALUES(1004,"lancer","darkner",3);
insert into member VALUES(1005,"king","darkner",15);
insert into member VALUES(2003,"queen","darkner",7);