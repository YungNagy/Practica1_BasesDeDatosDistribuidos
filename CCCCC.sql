select * into Noroeste from covidHistorico.dbo.datoscovid 
where ENTIDAD_RES = '02' or ENTIDAD_RES = '03' or ENTIDAD_RES = '25'
or ENTIDAD_RES = '26' or ENTIDAD_RES = '08' 

select * into Noreste from covidHistorico.dbo.datoscovid 
where ENTIDAD_RES = '05' or ENTIDAD_RES = '10' or ENTIDAD_RES = '19'
or ENTIDAD_RES = '24' or ENTIDAD_RES = '28' 

select * into Centro from covidHistorico.dbo.datoscovid 
where ENTIDAD_RES = '09' or ENTIDAD_RES = '15' or ENTIDAD_RES = '12'
or ENTIDAD_RES = '13' or ENTIDAD_RES = '17'  or ENTIDAD_RES = '21'  or ENTIDAD_RES = '29'

select * into Occidente from covidHistorico.dbo.datoscovid 
where ENTIDAD_RES = '01' or ENTIDAD_RES = '06' or ENTIDAD_RES = '11'
or ENTIDAD_RES = '14' or ENTIDAD_RES = '16'  or ENTIDAD_RES = '18'  
or ENTIDAD_RES = '22' or ENTIDAD_RES = '32'

select * into Sureste from covidHistorico.dbo.datoscovid 
where ENTIDAD_RES = '04' or ENTIDAD_RES = '07' or ENTIDAD_RES = '20'
or ENTIDAD_RES = '23' or ENTIDAD_RES = '27'  or ENTIDAD_RES = '30'  
or ENTIDAD_RES = '31'

select count(*) from Centro
select count(*) from Noreste
select count(*) from Noroeste
select count(*) from Occidente
select count(*) from Sureste

select count(*) from datoscovid

select count(*) as CasosConfirmados from Occidente 
where ENTIDAD_RES = '01' and CLASIFICACION_FINAL between '01' and '03' and FECHA_INGRESO like '2020-01-%%'
select count(*) as CasosRegistrados from Occidente 
where ENTIDAD_RES = '01' and FECHA_INGRESO like '2020-01-%%'

select count(*) as CasosConfirmados from Occidente 
where ENTIDAD_RES = '01' and CLASIFICACION_FINAL between '01' and '03' and FECHA_INGRESO like '2020-%%-%%'
group by FECHA_INGRESO having FECHA_INGRESO = '2020-01-%%'
select count(*) as CasosRegistrados from Occidente 
where ENTIDAD_RES = '01' and FECHA_INGRESO like '2020-02-%%'


create database Centro
use Centro
select * into datos from covidHistorico.dbo.Centro

create database Occidente
use Occidente
select * into datos from covidHistorico.dbo.Occidente

create database Noreste
use Noreste
select * into datos from covidHistorico.dbo.Noreste

create database Noroeste
use Noroeste
select * into datos from covidHistorico.dbo.Noroeste

create database Sureste
use Sureste
select * into datos from covidHistorico.dbo.Sureste

use Noroeste

			--AÑO 2020

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-01-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-01-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-02-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-02-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-03-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-03-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-04-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-04-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-05-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-05-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-06-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-06-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-07-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-07-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-08-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-08-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-09-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-09-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-10-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-10-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-11-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-11-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-12-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-12-%%'
group by ENTIDAD_RES

			--AÑO 2021

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-01-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-01-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-02-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-02-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-03-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-03-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-04-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-04-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-05-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-05-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-06-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-06-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-07-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-07-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-08-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-08-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-09-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-09-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-10-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-10-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-11-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-11-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-12-%%'
group by ENTIDAD_RES

select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-12-%%'
group by ENTIDAD_RES


			--AÑO 2022

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados, T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-01-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-01-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados, T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-02-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-02-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-03-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-03-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-04-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-04-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-05-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-05-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-06-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-06-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-07-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-07-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-08-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-08-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-09-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-09-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-10-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-10-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-10-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-10-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-11-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-11-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2022-12-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2022-12-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

create table dbo.cat_entidades (
  clave varchar(3),
  entidad varchar(150),
  abreviatura varchar(3)
)

insert into cat_entidades values ('01','AGUASCALIENTES','AS')
insert into cat_entidades values ('02','BAJA CALIFORNIA','BC')
insert into cat_entidades values ('03','BAJA CALIFORNIA SUR','BS')
insert into cat_entidades values ('04','CAMPECHE','CC')
insert into cat_entidades values ('05','COAHUILA DE ZARAGOZA','CL')
insert into cat_entidades values ('06','COLIMA','CM')
insert into cat_entidades values ('07','CHIAPAS','CS')
insert into cat_entidades values ('08','CHIHUAHUA','CH')
insert into cat_entidades values ('09','CIUDAD DE MÉXICO','DF')
insert into cat_entidades values ('10','DURANGO','DG')
insert into cat_entidades values ('11','GUANAJUATO','GT')
insert into cat_entidades values ('12','GUERRERO','GR')
insert into cat_entidades values ('13','HIDALGO','HG')
insert into cat_entidades values ('14','JALISCO','JC')
insert into cat_entidades values ('15','MÉXICO','MC')
insert into cat_entidades values ('16','MICHOACÁN DE OCAMPO','MN')
insert into cat_entidades values ('17','MORELOS','MS')
insert into cat_entidades values ('18','NAYARIT','NT')
insert into cat_entidades values ('19','NUEVO LEÓN','NL')
insert into cat_entidades values ('20','OAXACA','OC')
insert into cat_entidades values ('21','PUEBLA','PL')
insert into cat_entidades values ('22','QUERÉTARO','QT')
insert into cat_entidades values ('23','QUINTANA ROO','QR')
insert into cat_entidades values ('24','SAN LUIS POTOSÍ','SP')
insert into cat_entidades values ('25','SINALOA','SL')
insert into cat_entidades values ('26','SONORA','SR')
insert into cat_entidades values ('27','TABASCO','TC')
insert into cat_entidades values ('28','TAMAULIPAS','TS')
insert into cat_entidades values ('29', 'TLAXCALA','TL')
insert into cat_entidades values ('30','VERACRUZ DE IGNACIO DE LA LLAVE','VZ')
insert into cat_entidades values ('31','YUCATÁN','YN')
insert into cat_entidades values ('32','ZACATECAS','ZS')
insert into cat_entidades values ('36','ESTADOS UNIDOS MEXICANOS','EUM')
insert into cat_entidades values ('97','NO APLICA','NA')
insert into cat_entidades values ('98','SE IGNORA','SI')
insert into cat_entidades values ('99','NO ESPECIFICADO','NE')

