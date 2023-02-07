create database takalo
use takalo

create table user(
    iduser int not null primary key auto_increment,
    nom varchar(250),
    prenom varchar(250),
    email varchar(250),
    mdp varchar(250),
    dtn datetime,
    genre varchar,
    isadmin int
);

create table categorie(
    idcategorie int not null primary key auto_increment,
    nom varchar(250)
);

create table objet(
    idobjet int not null primary key auto_increment,
    nom varchar(250),
    prix double,
    iduser int,
    foreign key (iduser) references user(iduser),
    description varchar(250)
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
    path varchar(250)
);

create table demande(
    iddemande int not null primary key,
    idmpangataka int not null,
    foreign key (idmpangataka) references user(iduser),
    idangatahana itn not null,
    foreign key (idangatahana) references user(iduser),
    idobjmpangataka int not null,
    foreign key (idobjmpangataka) references objet(idobjet),
    idobjangatahana int not null,
    foreign key (idobjangatahana) references objet(idobjet),
    etatdemande varchar(250)
);

insert into user values(null,"ADMIN","admin","admin@gmail.com","qwerty",1);
insert into user values(null,"Ony","Tsiory","tsiory@gmail.com","veloma",0);

insert into categorie values(null,'vetement');
insert into categorie values(null,'technologie');
insert into categorie values(null,'bijou');
insert into categorie values(null,'music');
insert into categorie values(null,'utilitaire');
insert into categorie values(null,'outil');

insert into objet values(null,'bague',1000,1);
insert into objet values(null,'pc',500,1);
insert into objet values(null,'ipods',1501,1);
insert into objet values(null,'telephone',120,1);
insert into objet values(null,'chemise',300,1);
insert into objet values(null,'tourne vis',456,1);
insert into objet values(null,'cahier',78,1);
insert into objet values(null,'tronsoneuse',1000,1);
insert into objet values(null,'ecouteur',1563,1);
insert into objet values(null,'pantalon',4,1);
insert into objet values(null,'asus',1564,1);
insert into objet values(null,'stylo',1,1);
insert into objet values(null,'rein',1235,1);

insert into obejtcategorie values(null,1,3);
insert into obejtcategorie values(null,2,2);
insert into obejtcategorie values(null,5,1);
insert into obejtcategorie values(null,3,2);
insert into obejtcategorie values(null,4,2);
insert into obejtcategorie values(null,6,6);
insert into obejtcategorie values(null,7,5);
insert into obejtcategorie values(null,8,6);
insert into obejtcategorie values(null,9,4);
insert into obejtcategorie values(null,10,1);
insert into obejtcategorie values(null,11,2);
insert into obejtcategorie values(null,12,5);
insert into obejtcategorie values(null,13,5);



