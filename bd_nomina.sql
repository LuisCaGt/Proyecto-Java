create database bd_nomina;
use bd_nomina;
create table tEmpleados(
codigoE int(5) auto_increment primary key not null,
nombreE varchar(25) not null,
apellidoE varchar(25) not null,
puestoE varchar(20) not null,
sueldoE float(6) not null,
estadoE varchar(8) not null

)ENGINE=INNODB default CHARSET=LATIN1;
create table tCheques(
codigoC int auto_increment primary key not null,
extraordinarioC float not null,
bonificacionC float not null,
comisionesC float not null,
otrosC float not null,
anticipoC float not null,
descuentoC float not null,
totalC float not null
) ENGINE=INNODB default CHARSET=LATIN1;


