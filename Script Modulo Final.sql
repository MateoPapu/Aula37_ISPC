Create database modulofinal;
show databases;
use modulofinal;
CREATE TABLE Perro(
ID_Perro int not null auto_increment,
Nombre varchar(50)not null,
Fecha_nac date not null,
Sexo varchar(10) not null,
DNI_Dueño int not null, 
primary key(ID_Perro)
);
alter table Perro add constraint FK_Perro_Dueño foreign key (DNI_Dueño) references Dueño(DNI);

CREATE TABLE Dueño(
DNI int not null primary key,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Telefono int not null, 
Direccion varchar(75) not null);

CREATE TABLE Historial(
ID_Historial int not null auto_increment primary key,
Fecha date not null,
Perro int not null , foreign key(Perro) references Perro(ID_Perro),
Descripcion varchar(100) not null,
Monto int
);


INSERT INTO historial(Fecha,Perro,Descripcion,Monto) VALUES ('2022-07-10','10','Pedigree','800');