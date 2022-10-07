-- P R � C T I C A  1

--SEGMENTACI�N

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

   --Conjunto de las cinco regiones para las consultas veloces
   select * into T1 
   from Centro.dbo.datos
   union
   select * from Noreste.dbo.datos
   union
   select * from Noroeste.dbo.datos
   union
   select * from Sureste.dbo.datos
   union
   select * from Occidente.dbo.datos

--EJERCICIO 2
/*Determinar en que entidad de residencia y en 
que mes se reportaron m�s casos confirmados y que
porcentaje representa del total de casos por entidad.*/
--Realizado por: Alvarez Zamora Oscar Eduardo
use P1
go
select top 1 *, (total_confirmados*100)/(total_registrados) as Porcentaje from E1 order by total_confirmados desc

--EJERCICIO 3
/*Determinar cuantos casos fueron atendidos en 
      entidades distintas a la entidad de residencia.*/
--Realizado por: Alvarez Zamora Oscar Eduardo
use P1
go

select count(*) as NumCasosAtendidosFuera from T1
where ENTIDAD_UM != ENTIDAD_RES

--EJERCICIO 4
/* Determinar la evoluci�n de la pandemia 
      (casos registrados / casos sospechosos / 
	  casos confirmados por mes) en cada una de las entidades 
	  del pa�s. Esta informaci�n permitir� identificar
	  los picos de casos en las diferentes olas de contagio
	  registradas.*/
--Realizado por: Alem�n P�rez Alejandro

use P1
go
select *, (total_registrados - total_confirmados) as total_sospechosos from E1 order by anio, mes, ENTIDAD_RES
  
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
--Realizado por: Arg�ello Garc�a Jes�s Iv�n
   
select A.ENTIDAD_RES, count(*) from 
(select ID_REGISTRO, ENTIDAD_UM, SEXO, ENTIDAD_NAC, ENTIDAD_RES, MUNICIPIO_RES, EDAD, NACIONALIDAD, HABLA_LENGUA_INDIG,
  INDIGENA, DIABETES, EPOC, ASMA, INMUSUPR, HIPERTENSION, OTRA_COM, CARDIOVASCULAR, OBESIDAD, RENAL_CRONICA,
  TABAQUISMO, OTRO_CASO, MIGRANTE, PAIS_NACIONALIDAD, PAIS_ORIGEN from T1) as A
inner join
  (select ID_REGISTRO, ENTIDAD_UM, SEXO, ENTIDAD_NAC, ENTIDAD_RES, MUNICIPIO_RES, EDAD, NACIONALIDAD, HABLA_LENGUA_INDIG,
  INDIGENA, DIABETES, EPOC, ASMA, INMUSUPR, HIPERTENSION, OTRA_COM, CARDIOVASCULAR, OBESIDAD, RENAL_CRONICA,
  TABAQUISMO, OTRO_CASO, MIGRANTE, PAIS_NACIONALIDAD, PAIS_ORIGEN from T1) as B
on A.ENTIDAD_UM = B.ENTIDAD_UM and A.SEXO = B.SEXO and A.ENTIDAD_NAC = B.ENTIDAD_NAC and A.ENTIDAD_RES = B.ENTIDAD_RES
and A.MUNICIPIO_RES = B.MUNICIPIO_RES and A.EDAD = B.EDAD and A.NACIONALIDAD = B.NACIONALIDAD and A.HABLA_LENGUA_INDIG = B.HABLA_LENGUA_INDIG
and A.INDIGENA = B.INDIGENA and A.DIABETES = B.DIABETES and A.EPOC = B.EPOC and A.ASMA = B.ASMA and A.INMUSUPR = B.INMUSUPR
and A.HIPERTENSION = B.HIPERTENSION and A.OTRA_COM = B.OTRA_COM and A.CARDIOVASCULAR = B.CARDIOVASCULAR and A.OBESIDAD = B.OBESIDAD
and A.RENAL_CRONICA = B.RENAL_CRONICA and A.TABAQUISMO = B.TABAQUISMO and A.OTRO_CASO = B.OTRO_CASO and A.MIGRANTE = B.MIGRANTE 
and A.PAIS_NACIONALIDAD = B.PAIS_NACIONALIDAD and A.PAIS_ORIGEN = B.PAIS_ORIGEN and A.ID_REGISTRO != B.ID_REGISTRO
group by A.ENTIDAD_RES
order by A.ENTIDAD_RES

--EJERCICIO 6
/*Listar todas las columnas de los registros duplicados 
      obtenidos en la consulta 5. Para esta consulta aplique 
	  el concepto de resta de conjuntos o diferencia de 
	  �lgebra relacional. Ordenar los resultados por entidad 
	  de residencia.*/
--Realizado por: Arg�ello Garc�a Jes�s Iv�n

   

--EJERCICIO 7
/*Determinar las 5 entidades con el mayor n�mero de fallecidos 
      por a�o, con casos de neumon�a y caso no confirmado de Covid.*/
--Realizado por: Alem�n P�rez Alejandro

use P1
go
select * from 
(select top 5 entidad_res as Entidades, count(*) as total_defuncion, year(FECHA_INGRESO) as anio
    from T1
        where FECHA_DEF != '9999-99-99' 
			and YEAR(FECHA_INGRESO) = '2020'
			and NEUMONIA = '1' and CLASIFICACION_FINAL between '4' and '7'
group by year(FECHA_INGRESO), ENTIDAD_RES
order by total_defuncion desc) A
union
select * from 
(select top 5 entidad_res as Entidades, count(*) as total_defuncion, year(FECHA_INGRESO) as anio
    from T1
        where FECHA_DEF != '9999-99-99' 
			and YEAR(FECHA_INGRESO) = '2021'
			and NEUMONIA = '1' and CLASIFICACION_FINAL between '4' and '7'
group by year(FECHA_INGRESO), ENTIDAD_RES
order by total_defuncion desc) B
union
select * from 
(select top 5 entidad_res as Entidades, count(*) as total_defuncion, year(FECHA_INGRESO) as anio
    from T1
        where FECHA_DEF != '9999-99-99' 
			and YEAR(FECHA_INGRESO) = '2022'
			and NEUMONIA = '1' and CLASIFICACION_FINAL between '4' and '7'
group by year(FECHA_INGRESO), ENTIDAD_RES
order by total_defuncion desc) C

   

--EJERCICIO 8
/*Determinar que entidades presentan comorbilidad sin obesidad
      y sin hipertensi�n.*/
--Realizado por: Arg�ello Garc�a Jes�s Iv�n


--EJERCICIO 9
/*Determinar cuantos casos confirmados por genero y en el rango de los
      20 a los 39 y de los 40 a 59 se registraron en 2020, 2021 
	  y 2022 (hasta la fecha en que se tienen registros en la base 
	  de datos).*/
--Realizado por: Alem�n P�rez Alejandro

use P1
go   
select M1.anio, M1.casosM1 Mujeres2039, M2.casosM2 Mujeres4059, H1.casosH1 Hombres2039, H2.casosH2 Hombres4049
from(select count(*) as casosM1, YEAR(fecha_ingreso) AS anio
from T1
where sexo = '1'
    and CLASIFICACION_FINAL between '1' and '3'
    and edad between '20' and '39'
group by YEAR(fecha_ingreso)) AS M1
inner join 
(select count(*) as casosM2, YEAR(fecha_ingreso) AS anio
from T1
where sexo = '1'
    and CLASIFICACION_FINAL between '1' and '3'
    and edad between '40' and '59'
group by YEAR(fecha_ingreso)) AS M2
on M1.anio = M2.anio
inner join
(select count(*) as casosH1, YEAR(fecha_ingreso) AS anio
from T1
where sexo = '2'
    and CLASIFICACION_FINAL between '1' and '3'
    and edad between '20' and '39'
group by YEAR(fecha_ingreso)) AS H1
on M2.anio = H1.anio
inner join
(select count(*) as casosH2, YEAR(fecha_ingreso) AS anio
from T1
where sexo = '2'
    and CLASIFICACION_FINAL between '1' and '3'
    and edad between '40' and '59'
group by YEAR(fecha_ingreso)) AS H2
on H1.anio = H2.anio
order by M1.anio;


--EJERCICIO 10
/*Determinar por entidad en que a�o de los registrados en 
       la base de datos, se presentaron m�s casos en ni�os menos 
	   a 12 a�os.*/
--Realizado por: Alvarez Zamora Oscar Eduardo

use P1
go
select A.ENTIDAD_RES, A.anio, A.tc
from (select ENTIDAD_RES, anio, count(*) tc
from (select year(FECHA_INGRESO) as anio, ID_REGISTRO, ENTIDAD_RES from T1
	where CLASIFICACION_FINAL between 1 and 3
	and EDAD < 12) as T
	group by ENTIDAD_RES, anio) as A
inner join
	(select ENTIDAD_RES, max(tc) as x
	from (select ENTIDAD_RES, anio, count(*) tc
	from (select year(FECHA_INGRESO) as anio, ID_REGISTRO, ENTIDAD_RES from T1
		where CLASIFICACION_FINAL between 1 and 3
		and EDAD < 12) as T
		group by ENTIDAD_RES, anio) as T2
	group by ENTIDAD_RES) as B
on A.ENTIDAD_RES = B.ENTIDAD_RES and A.tc = B.x
order by ENTIDAD_RES