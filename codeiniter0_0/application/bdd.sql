-- create database projet1;
-- use projet1;
create table inscrit(
    id int auto_increment primary key,
    nom varchar(50),
    email varchar(50),
    mdp varchar(50)
);

 insert into inscrit values(null,'admin','admin','qwerty');
 insert into inscrit values(null,'admin','admin@admin','qwerty');