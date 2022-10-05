use Noroeste

			--AÑO 2020

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados, T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-01-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-01-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados, T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-02-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-02-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-03-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-03-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-04-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-04-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-05-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-05-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-06-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-06-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-07-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-07-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-08-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-08-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-09-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-09-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-10-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-10-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-10-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-10-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-11-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-11-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-12-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-12-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

			--AÑO 2021

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados, T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-01-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-01-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados, T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-02-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-02-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-03-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-03-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-04-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-04-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-05-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-05-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-06-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-06-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-07-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-07-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-08-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-08-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-09-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-09-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-10-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-10-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-10-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-10-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-11-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-11-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc

select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2021-12-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2021-12-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES
order by T2.ENTIDAD_RES asc



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


/*select TT2.CantidadCasosConfirmados as CasosConfirmadosMarzo, TT2.CantidadCasosRegistrados as CasosRegistradosMarzo,
TT1.CantidadCasosConfirmados as CasosConfirmadosAbril, TT1.CantidadCasosRegistrados as CasosRegistradosAbril,TT1.ENTIDAD_RES
from (select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-04-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-04-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES) TT1
inner join
(select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-03-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-03-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES) TT2
on TT1.ENTIDAD_RES = TT2.ENTIDAD_RES
order by TT1.ENTIDAD_RES asc
*/

select TT1.CantidadCasosConfirmados, TT1.CantidadCasosRegistrados, TT2.entidad
from (select T1.CantidadCasosConfirmados, T2.CantidadCasosRegistrados , T2.ENTIDAD_RES
from (select count(*) as CantidadCasosConfirmados, ENTIDAD_RES from datos 
where CLASIFICACION_FINAL between '01' and '03'
and FECHA_INGRESO like '2020-10-%%'
group by ENTIDAD_RES) T1
inner join (select count(*) as CantidadCasosRegistrados, ENTIDAD_RES from datos
where FECHA_INGRESO like '2020-10-%%'
group by ENTIDAD_RES) T2
on T1.ENTIDAD_RES = T2.ENTIDAD_RES) TT1
inner join
(select * from covidHistorico.dbo.cat_entidades) TT2
on TT1.ENTIDAD_RES = TT2.clave