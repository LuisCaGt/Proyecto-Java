create database bd_nomina;
use bd_empleados;
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
codigoE int(5) not null,
extraordinarioC float,
bonificacionC float not null,
comisionesC float,
otrosC float,
anticipoC float,
descuentoC float,
foreign key (codigoE) references tEmpleados (codigoE)
) ENGINE=INNODB default CHARSET=LATIN1;
create table tdatosCheques(
codigoDC int auto_increment primary key not null,
codigoC int(5) not null,
foreign key (codigoC) references tCheques (codigoC)
) ENGINE=INNODB default CHARSET=LATIN1;