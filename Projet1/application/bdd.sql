drop database takalo;
create database takalo;
use takalo;

create table user(
    iduser int primary key auto_increment,
    nom varchar(250),
    prenom varchar(250),
    email varchar(250),
    mdp varchar(250),
    dtn date,
    genre varchar(250),
    isadmin int
);

insert into user values(null,"ADMIN","admin","admin@gmail.com","qwerty",'2003-04-19',"homme",1);
insert into user values(null,"Ony","Tsiory","tsiory@gmail.com","veloma",'2003-07-23',"femme",0);

create table categorie(
    idcategorie int primary key auto_increment,
    nom varchar(250)
);

create table objet(
    idobjet int primary key auto_increment,
    nom varchar(250),
    description varchar(250),
    prix double,
    iduser int,
    foreign key (iduser) references user(iduser)
    
);
insert into objet values(null,"bague","joli",1000,1);
insert into objet values(null,"pc","joli",500,1);
insert into objet values(null,"ipods","joli",1501,1);
insert into objet values(null,"telephone","joli",120,1);
insert into objet values(null,"chemise","joli",300,1);
insert into objet values(null,"tourne_vis","joli",456,1);
insert into objet values(null,"cahier","joli",78,1);
insert into objet values(null,"tronsoneuse","joli",1000,1);
insert into objet values(null,"ecouteur","joli",1563,1);
insert into objet values(null,"pantalon","joli",4,1);
insert into objet values(null,"asus","joli",1564,1);
insert into objet values(null,"stylo","joli",1,1);
insert into objet values(null,"rein","joli",1235,1);

create table objetcategorie(
    idobjetcategorie int primary key auto_increment,
    idobjet int not null,
    foreign key (idobjet) references objet(idobjet),
    idcategorie int not null,
    foreign key (idcategorie) references categorie(idcategorie)
);

create table photo(
    idphoto int primary key auto_increment,
    path varchar(250)
);

create table demande(
    iddemande int primary key,
    idmpangataka int not null,
    foreign key (idmpangataka) references user(iduser),
    idangatahana int not null,
    foreign key (idangatahana) references user(iduser),
    idobjmpangataka int not null,
    foreign key (idobjmpangataka) references objet(idobjet),
    idobjangatahana int not null,
    foreign key (idobjangatahana) references objet(idobjet),
    etatdemande varchar(250)
);


insert into categorie values(null,"vetement");
insert into categorie values(null,"technologie");
insert into categorie values(null,"bijou");
insert into categorie values(null,"music");
insert into categorie values(null,"utilitaire");
insert into categorie values(null,"outil");



insert into objetcategorie values(null,1,3);
insert into objetcategorie values(null,2,2);
insert into objetcategorie values(null,5,1);
insert into objetcategorie values(null,3,2);
insert into objetcategorie values(null,4,2);
insert into objetcategorie values(null,6,6);
insert into objetcategorie values(null,7,5);
insert into objetcategorie values(null,8,6);
insert into objetcategorie values(null,9,4);
insert into objetcategorie values(null,10,1);
insert into objetcategorie values(null,11,2);
insert into objetcategorie values(null,12,5);
insert into objetcategorie values(null,13,5);