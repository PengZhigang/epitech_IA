create table materiel(
    outil int auto_increment, 
    nom varchar(15), 
    primary key(outil)
    ); 
insert into materiel values('','tournevis'), ('','marteau'), ('','burin'), ('','perceuse'), 
  ('','forets'), ('','maillet'), ('','pince'), ('','scie') ; 
create table endroit(
    lieu int auto_increment,
    nom varchar(15),
    primary key(lieu)
    ); 
insert into endroit values('','magasin'),('','atelier'),('','reserve'); 
create table stock ( 
    idlieu int,
    idoutil int,
    nb int default 0,
    FOREIGN KEY (idlieu) REFERENCES endroit(lieu),
    FOREIGN KEY (idoutil) REFERENCES materiel(outil),
    ); 
insert into stock values   (1,1,30),(1,2,2),(1,3,0),(1,4,2),(1,5,0),(1,6,0),(1,7,0),(1,8,1),
                            (2,1,3),(2,2,0),(2,3,0),(2,4,0),(2,5,3),(2,6,2),(2,7,5),(2,8,2),
                            (3,1,0),(3,2,2),(3,3,5),(3,4,0),(3,5,0),(3,6,2),(3,7,0),(3,8,1) ; 