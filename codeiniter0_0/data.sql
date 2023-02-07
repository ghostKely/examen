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
    nom varchar(20),
    prix double,
    iduser int,
    foreign key (iduser) references user(iduser)
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

create table objet values(null,'bague',1000,1);
create table objet values(null,'pc',1000,1);
create table objet values(null,'ipods',1000,1);
create table objet values(null,'telephone',1000,1);
create table objet values(null,'chemise',1000,1);
create table objet values(null,'tourne vis',1000,1);
create table objet values(null,'cahier',1000,1);
create table objet values(null,'tronsoneuse',1000,1);
create table objet values(null,'ecouteur',1000,1);
create table objet values(null,'pantalon',1000,1);
create table objet values(null,'asus',1000,1);
create table objet values(null,'stylo',1000,1);
create table objet values(null,'rein',1000,1);



