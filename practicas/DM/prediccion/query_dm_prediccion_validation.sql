
select t.monto_obligado/1000000000 as monto_obligado, t.year||'-'||t.month as anhomes,
row_number() over (ORDER BY t.year, t.month) as rownum
from (select sum(fo.monto_obligado) as monto_obligado, dt.year, dt.month
from fact_obligacion fo, dim_tiempo dt
where fo.fecha_aprobacion = dt.id
and fo.fecha_aprobacion >= 20170101
group by dt.year, dt.month) t
order by t.year, t.month;

