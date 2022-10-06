-- P R Á C T I C A  1

--SEGMENTACIÓN

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

create database Centro
go
use Centro
go
select * into datos from covidHistorico.dbo.Centro

create database Occidente
go
use Occidente
go
select * into datos from covidHistorico.dbo.Occidente

create database Noreste
go
use Noreste
go
select * into datos from covidHistorico.dbo.Noreste

create database Noroeste
go
use Noroeste
go
select * into datos from covidHistorico.dbo.Noroeste

create database Sureste
go
use Sureste
go
select * into datos from covidHistorico.dbo.Sureste


--EJERCICIO 1
--Realizado por: Alvarez Zamora Oscar Eduardo

select A.ENTIDAD_RES, A.mes, A.anio, A.total_confirmados, 
       B.total_registrados 
from
(select T.entidad_res, T.mes, T.anio, count(*) total_confirmados
from ( select id_registro, entidad_res, month(FECHA_INGRESO) mes, 
              year(fecha_ingreso) anio, CLASIFICACION_FINAL
       from Noroeste.dbo.datos
       where year(fecha_ingreso) between '2020' and '2022') as T
where CLASIFICACION_FINAL between 1 and 3
group by entidad_res, mes, anio)  as A
inner join 
(select T.entidad_res, T.mes, T.anio, count(*) total_registrados
 from ( select id_registro, entidad_res, month(FECHA_INGRESO) mes, 
              year(fecha_ingreso) anio, CLASIFICACION_FINAL
       from Noroeste.dbo.datos
       where year(fecha_ingreso) between '2020' and '2022') as T
group by entidad_res, mes, anio)  as B
on A.ENTIDAD_RES = B.ENTIDAD_RES and 
   A.mes = B.mes and A.anio = B.anio
union
select A.ENTIDAD_RES, A.mes, A.anio, A.total_confirmados, B.total_registrados 
from
(select T.entidad_res, T.mes, T.anio, count(*) total_confirmados
from ( select id_registro, entidad_res, month(FECHA_INGRESO) mes, 
              year(fecha_ingreso) anio, CLASIFICACION_FINAL
       from Noreste.dbo.datos
       where year(fecha_ingreso) between '2020' and '2022') as T
where CLASIFICACION_FINAL between 1 and 3
group by entidad_res, mes, anio)  as A
inner join 
(select T.entidad_res, T.mes, T.anio, count(*) total_registrados
 from ( select id_registro, entidad_res, month(FECHA_INGRESO) mes, 
              year(fecha_ingreso) anio, CLASIFICACION_FINAL
       from Noreste.dbo.datos
       where year(fecha_ingreso) between '2020' and '2022') as T
group by entidad_res, mes, anio)  as B
on A.ENTIDAD_RES = B.ENTIDAD_RES and 
   A.mes = B.mes and A.anio = B.anio
union
select A.ENTIDAD_RES, A.mes, A.anio, A.total_confirmados, B.total_registrados 
from
(select T.entidad_res, T.mes, T.anio, count(*) total_confirmados
from ( select id_registro, entidad_res, month(FECHA_INGRESO) mes, 
              year(fecha_ingreso) anio, CLASIFICACION_FINAL
       from Centro.dbo.datos
       where year(fecha_ingreso) between '2020' and '2022') as T
where CLASIFICACION_FINAL between 1 and 3
group by entidad_res, mes, anio)  as A
inner join 
(select T.entidad_res, T.mes, T.anio, count(*) total_registrados
 from ( select id_registro, entidad_res, month(FECHA_INGRESO) mes, 
              year(fecha_ingreso) anio, CLASIFICACION_FINAL
       from Centro.dbo.datos
       where year(fecha_ingreso) between '2020' and '2022') as T
group by entidad_res, mes, anio)  as B
on A.ENTIDAD_RES = B.ENTIDAD_RES and 
   A.mes = B.mes and A.anio = B.anio
union
select A.ENTIDAD_RES, A.mes, A.anio, A.total_confirmados, B.total_registrados 
from
(select T.entidad_res, T.mes, T.anio, count(*) total_confirmados
from ( select id_registro, entidad_res, month(FECHA_INGRESO) mes, 
              year(fecha_ingreso) anio, CLASIFICACION_FINAL
       from Occidente.dbo.datos
       where year(fecha_ingreso) between '2020' and '2022') as T
where CLASIFICACION_FINAL between 1 and 3
group by entidad_res, mes, anio)  as A
inner join 
(select T.entidad_res, T.mes, T.anio, count(*) total_registrados
 from ( select id_registro, entidad_res, month(FECHA_INGRESO) mes, 
              year(fecha_ingreso) anio, CLASIFICACION_FINAL
       from Occidente.dbo.datos
       where year(fecha_ingreso) between '2020' and '2022') as T
group by entidad_res, mes, anio)  as B
on A.ENTIDAD_RES = B.ENTIDAD_RES and 
   A.mes = B.mes and A.anio = B.anio
   union
select A.ENTIDAD_RES, A.mes, A.anio, A.total_confirmados, B.total_registrados 
from
(select T.entidad_res, T.mes, T.anio, count(*) total_confirmados
from ( select id_registro, entidad_res, month(FECHA_INGRESO) mes, 
              year(fecha_ingreso) anio, CLASIFICACION_FINAL
       from Sureste.dbo.datos
       where year(fecha_ingreso) between '2020' and '2022') as T
where CLASIFICACION_FINAL between 1 and 3
group by entidad_res, mes, anio)  as A
inner join 
(select T.entidad_res, T.mes, T.anio, count(*) total_registrados
 from ( select id_registro, entidad_res, month(FECHA_INGRESO) mes, 
              year(fecha_ingreso) anio, CLASIFICACION_FINAL
       from Sureste.dbo.datos
       where year(fecha_ingreso) between '2020' and '2022') as T
group by entidad_res, mes, anio)  as B
on A.ENTIDAD_RES = B.ENTIDAD_RES and 
   A.mes = B.mes and A.anio = B.anio
   order by A.anio, A.mes, A.ENTIDAD_RES
   

--EJERCICIO 2
--Realizado por: 

   

--EJERCICIO 3
--Realizado por: 
   

--EJERCICIO 4
--Realizado por: 

   

--EJERCICIO 5
--Realizado por: 
   

--EJERCICIO 6
--Realizado por: 

   

--EJERCICIO 7
--Realizado por: 
   

--EJERCICIO 8
--Realizado por: 

   

--EJERCICIO 9
--Realizado por: 
   

--EJERCICIO 10
--Realizado por: 
