CREATE TABLE Dueno(
DNI int not null primary key,
Nombre varchar(50),
Apellido varchar(50),
Telefono int, 
Direccion varchar(100)
);

CREATE TABLE Perro(
ID_Perro int not null auto_increment,
Nombre varchar(50),
Fecha_nac date,
Sexo varchar(10),
DNI_Dueno int, 
primary key(ID_Perro)
);
  
alter table Perro add constraint FK_Perro_Dueño foreign key (DNI_Dueno) references Dueno(DNI);

CREATE TABLE Historial(
ID_Historial int not null auto_increment primary key,
Fecha date,
Perro int not null , foreign key(Perro) references Perro(ID_Perro),
Descripcion varchar(100),
Monto int
);

INSERT INTO dueno(DNI,Nombre,Apellido,Telefono,Direccion) VALUES (23789654,'Jose','Cecilia',155631478,'Formosa 703');
INSERT INTO perro(Nombre,Fecha_nac,Sexo,DNI_Dueno) VALUES ('Luna','2018-02-11','Hembra',23789654);

INSERT INTO perro(ID_Perro,Nombre,Fecha_nac,Sexo,DNI_Dueno) VALUES (10,'Bambo','2014-02-14','Macho',23789654);

select * from perro;


