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

INSERT INTO perro(Nombre,Fecha_nac,Sexo,DNI_Dueño) VALUES ('Cachito','2021-02-16','Masculino',16244788);
INSERT INTO dueño(DNI,Nombre,Apellido,Telefono,Direccion) VALUES (16244788,'Jose','Del Rio',157580625,'Juan Luque 328');

UPDATE perro set Fecha_nac =  '2021-01-30' where ID_Perro = 1;
select * from perro; 