create database takalo
use takalo

create table user(
    iduser int not null primary key auto_increment,
    nom varchar(20),
    prenom varchar(20),
    email varchar(20),
    mdp varchar(20),
    isadmin int
);

create table categorie(
    idcategorie int not null primary key auto_increment,
    nom varchar(20)
);

create table objet(
    idobjet int not null primary key auto_increment,
    nom varchar(20)
);

create table objetcategorie(
    idobjetcategorie int not null primary key auto_increment,
    idobjet int not null,
    foreign key (idobjet) references objet(idobjet),
    idcategorie int not null,
    foreign key (idcategorie) references categorie(idcategorie)
);

create table photo(
    idphoto int not null primary key auto_increment,
    path varchar(100)
);

insert into user values(null,"Balita","Tsiory","balitatsiory@gmail.com","bonjour",1);
insert into user values(null,"Ony","Tsiory","tsiory@gmail.com","veloma",0);

insert into categorie values(null,'vetement');
insert into categorie values(null,'technologie');
insert into categorie values(null,'bijou');
insert into categorie values(null,'music');
insert into categorie values(null,'utilitaire');
insert into categorie values(null,'outil');

create table objet(null,'bague');
create table objet(null,'pc');
create table objet(null,'ipods');
create table objet(null,'telephone');
create table objet(null,'chemise');
create table objet(null,'tourne vis');
create table objet(null,'cahier');
create table objet(null,'tronsoneuse');
create table objet(null,'ecouteur');
create table objet(null,'pantalon');
create table objet(null,'asus');
create table objet(null,'stylo');
create table objet(null,'rein');



