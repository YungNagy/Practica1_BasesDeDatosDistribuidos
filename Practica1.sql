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

create database P1
go
use P1
go
select A.ENTIDAD_RES, A.mes, A.anio, A.total_confirmados, 
       B.total_registrados into E1
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
/*Determinar en que entidad de residencia y en 
que mes se reportaron más casos confirmados y que
porcentaje representa del total de casos por entidad.*/
--Realizado por: Alvarez Zamora Oscar Eduardo
use P1
go
select top 1 *, (total_confirmados*100)/(total_registrados) as Porcentaje from E1 order by total_confirmados desc

--EJERCICIO 3
/*Determinar cuantos casos fueron atendidos en 
      entidades distintas a la entidad de residencia.*/
--Realizado por: Alvarez Zamora Oscar Eduardo
use covidHistorico
go
select count(*) as NumCasosAtendidosFuera from datoscovid 
where ENTIDAD_UM != ENTIDAD_RES

--EJERCICIO 4
/* Determinar la evolución de la pandemia 
      (casos registrados / casos sospechosos / 
	  casos confirmados por mes) en cada una de las entidades 
	  del país. Esta información permitirá identificar
	  los picos de casos en las diferentes olas de contagio
	  registradas.*/
--Realizado por: 

   

--EJERCICIO 5
/*Determinar cuantos registros se repiten en la 
      base de datos, considerando las siguientes columnas: 
	  [ENTIDAD_UM],[SEXO],[ENTIDAD_NAC],[ENTIDAD_RES]
      ,[MUNICIPIO_RES],[EDAD],[NACIONALIDAD]      
      ,[HABLA_LENGUA_INDIG],[INDIGENA],[DIABETES]
      ,[EPOC],[ASMA],[INMUSUPR],[HIPERTENSION],[OTRA_COM]
      ,[CARDIOVASCULAR],[OBESIDAD],[RENAL_CRONICA]
      ,[TABAQUISMO],[OTRO_CASO],[MIGRANTE]
      ,[PAIS_NACIONALIDAD],[PAIS_ORIGEN]     

	  Ordenar los datos por entidad de residencia*/
--Realizado por: 
   

--EJERCICIO 6
/*Listar todas las columnas de los registros duplicados 
      obtenidos en la consulta 5. Para esta consulta aplique 
	  el concepto de resta de conjuntos o diferencia de 
	  álgebra relacional. Ordenar los resultados por entidad 
	  de residencia.*/
--Realizado por: 

   

--EJERCICIO 7
/*Determinar las 5 entidades con el mayor número de fallecidos 
      por año, con casos de neumonía y caso no confirmado de Covid.*/
--Realizado por: 
   

--EJERCICIO 8
/*Determinar que entidades presentan comorbilidad sin obesidad
      y sin hipertensión.*/
--Realizado por: 



--EJERCICIO 9
/*Determinar cuantos casos confirmados por genero y en el rango de los
      20 a los 39 y de los 40 a 59 se registraron en 2020, 2021 
	  y 2022 (hasta la fecha en que se tienen registros en la base 
	  de datos).*/
--Realizado por: 
   

--EJERCICIO 10
/*Determinar por entidad en que año de los registrados en 
       la base de datos, se presentaron más casos en niños menos 
	   a 12 años.*/
--Realizado por: Alvarez Zamora Oscar Eduardo
use covidHistorico
go
select ENTIDAD_RES, count(*) as CasosMenoresA12, year(FECHA_INGRESO) as Anio from datoscovid 
where EDAD < 12
group by ENTIDAD_RES, year(FECHA_INGRESO)
order by ENTIDAD_RES, CasosMenoresA12 desc
