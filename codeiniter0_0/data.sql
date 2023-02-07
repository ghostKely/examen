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

