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
use P1
go

select count(*) as NumCasosAtendidosFuera from T1
where ENTIDAD_UM != ENTIDAD_RES

--EJERCICIO 4
/* Determinar la evolución de la pandemia 
      (casos registrados / casos sospechosos / 
	  casos confirmados por mes) en cada una de las entidades 
	  del país. Esta información permitirá identificar
	  los picos de casos en las diferentes olas de contagio
	  registradas.*/
--Realizado por: Alemón Pérez Alejandro

use P1
go
select T2.ENTIDAD_RES, T2.mes, T2.anio, T4.total_confirmados, T2.total_sospechosos, T4.total_registrados from
(select ENTIDAD_RES, total_confirmados, total_registrados, mes, anio from E1) as T4
inner join
(select T.entidad_res, T.mes, T.anio, count(*) total_sospechosos
from ( select id_registro, entidad_res, month(FECHA_INGRESO) mes, 
              year(fecha_ingreso) anio, CLASIFICACION_FINAL
       from T1
       where year(fecha_ingreso) between '2020' and '2022') as T
where CLASIFICACION_FINAL = 6
group by entidad_res, mes, anio) as T2
on T4.Entidad_res = T2.Entidad_res and T4.mes = T2.mes and T4.anio = T2.anio
order by T2.entidad_res, T2.anio, T2.mes
  
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
--Realizado por: Argüello García Jesús Iván

use P1
go
select ENTIDAD_RES, count (*) as Totalrepetidos from(
select ENTIDAD_RES, count(*) as total
from P1.dbo.T1 A
group by ENTIDAD_RES, SEXO, ENTIDAD_UM, ENTIDAD_NAC, MUNICIPIO_RES, EDAD, NACIONALIDAD, HABLA_LENGUA_INDIG, 
	   INDIGENA, DIABETES, EPOC, ASMA, INMUSUPR, HIPERTENSION, OTRA_COM, CARDIOVASCULAR, OBESIDAD, RENAL_CRONICA, TABAQUISMO,
	   OTRO_CASO, MIGRANTE, PAIS_NACIONALIDAD, PAIS_ORIGEN
having count(*)>1) A
group by ENTIDAD_RES
order by ENTIDAD_RES



--EJERCICIO 6
/*Listar todas las columnas de los registros duplicados 
      obtenidos en la consulta 5. Para esta consulta aplique 
	  el concepto de resta de conjuntos o diferencia de 
	  álgebra relacional. Ordenar los resultados por entidad 
	  de residencia.*/
--Realizado por: Argüello García Jesús Iván

use P1
go

select ENTIDAD_RES, SEXO, ENTIDAD_UM, ENTIDAD_NAC, MUNICIPIO_RES, EDAD, NACIONALIDAD, HABLA_LENGUA_INDIG, 
	   INDIGENA, DIABETES, EPOC, ASMA, INMUSUPR, HIPERTENSION, OTRA_COM, CARDIOVASCULAR, OBESIDAD, RENAL_CRONICA, TABAQUISMO,
	   OTRO_CASO, MIGRANTE, PAIS_NACIONALIDAD, PAIS_ORIGEN, count(*) as total
from P1.dbo.T1 A
group by ENTIDAD_RES, SEXO, ENTIDAD_UM, ENTIDAD_NAC, MUNICIPIO_RES, EDAD, NACIONALIDAD, HABLA_LENGUA_INDIG, 
	   INDIGENA, DIABETES, EPOC, ASMA, INMUSUPR, HIPERTENSION, OTRA_COM, CARDIOVASCULAR, OBESIDAD, RENAL_CRONICA, TABAQUISMO,
	   OTRO_CASO, MIGRANTE, PAIS_NACIONALIDAD, PAIS_ORIGEN
having count(*)>1
order by ENTIDAD_RES
   

--EJERCICIO 7
/*Determinar las 5 entidades con el mayor número de fallecidos 
      por año, con casos de neumonía y caso no confirmado de Covid.*/
--Realizado por: Alemón Pérez Alejandro

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
      y sin hipertensión.*/
--Realizado por: Argüello García Jesús Iván
use P1
go

select ID_REGISTRO, ENTIDAD_RES, ENTIDAD_UM, MUNICIPIO_RES, TIPO_PACIENTE, SEXO, FECHA_INGRESO, FECHA_DEF,
       DIABETES, HIPERTENSION, OBESIDAD, CARDIOVASCULAR, INMUSUPR, EPOC, ASMA, RENAL_CRONICA,
       TABAQUISMO, CLASIFICACION_FINAL, INTUBADO, UCI into dbo.registros_comorbilidad
from P1.dbo.T1 B
where exists (select *
              from (select id_registro,
                             IIF(IIF(DIABETES = '1',1,0)+
                                 IIF(EPOC = '1',1,0)+
                               IIF(ASMA = '1',1,0)+
                               IIF(INMUSUPR = '1',1,0)+
                               IIF(HIPERTENSION = '1',1,0) +
                               IIF(CARDIOVASCULAR = '1',1,0) +
                               IIF(TABAQUISMO = '1',1,0) +
                               IIF(OBESIDAD = '1',1,0) +
                               IIF(RENAL_CRONICA = '1',1,0) +
                               IIF(OTRA_COM = '1',1,0) >= 2, 1, null) as 'noEnfermedades'
                    from P1.dbo.T1 ) as T
               where B.ID_REGISTRO = T.ID_REGISTRO and noEnfermedades is not null)

select municipio_res, obesidad, hipertension into R
from registros_comorbilidad
select * from R

select 2 as obesidad, 2 as hipertension into S
select * from S

select municipio_res into TP
from registros_comorbilidad

select * into TPXS
from TP cross join S

select *
from TPXS

-- T2
select municipio_res into T2
from (
        select * -- municipio_res, asma, cardiovascular
        from R
        except
        select * 
        from TPXS
      ) as TT2
      
-- T1 - T2
select * 
from (select * 
      from TP except select *
                     from T2) as C

select *
from registros_comorbilidad rc
where exists (
select rsac.municipio_res, rcc.tcrc
from (select municipio_res, count(*) csac
      from registros_comorbilidad rc
      where OBESIDAD='2' and HIPERTENSION='2'
      group by municipio_res) rsac
inner join
     (select municipio_res, count(*) tcrc
      from registros_comorbilidad rc
      group by municipio_res) rcc
on rsac.municipio_res = rcc.municipio_res
and rsac.csac = rcc.tcrc
where rsac.municipio_res = rc.municipio_res)


--EJERCICIO 9
/*Determinar cuantos casos confirmados por genero y en el rango de los
      20 a los 39 y de los 40 a 59 se registraron en 2020, 2021 
	  y 2022 (hasta la fecha en que se tienen registros en la base 
	  de datos).*/
--Realizado por: Alemón Pérez Alejandro

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
/*Determinar por entidad en que año de los registrados en 
       la base de datos, se presentaron más casos en niños menos 
	   a 12 años.*/
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


/*
CONCLUSIONES DE LA PRACTICA 1: 
Esta practica nos fue de gran ayuda para reforzar y retomar los conocimientos ya adquiridos de la materia de Base de datos 
Puesto que al haber sido una materia que ya teniamos tiempo sin tenerla, algunas cosas se nos dificultaron, empezando desde la sintaxis, como
la logica de SQL para poder realizar las consultas. Consideramos que manejar bases de datos mas complejas o por lo menos mas grandes como lo fue 
en este caso de los Datos Covid, proporciona un amplio desarrollo tanto teórico como práctico puesto que soliamos estar acostumbrados a casos
de consultas mas sencillas. También creemos que el separar en varios pedazos la base de datos como en este caso que hicimos distintas bases de 
datos para cada región nos permitirá ya en algun futuro dentro de la materia, y entendiendoo que queremos llevar todo este conocimiento al entorno 
distribuido a poder realizarlo de manera mas sencilla o en cuestiones de que podamos tener una red de maquinas una con cada base de datos.
Por lo que terminamos obteniendo mejor conocimiento sobre SQL, consultas y detalles que se habian perdido de vista a traves del tiempo. 

*/
