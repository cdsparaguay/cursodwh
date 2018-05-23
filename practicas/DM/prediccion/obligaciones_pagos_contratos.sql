
select fo.fecha_factura, fot.fecha_deposito, dp.id as proveedor_id,
de.entidad_codigo, dog.objeto_gasto_codigo
from fact_obligacion fo, fact_ot fot, dim_junk_obligacion djo,
v_contrato vo, fact_contrato fc, dim_proveedor dp,
dim_clasificador_entidad de, dim_clasificador_objeto_gasto dog
where fo.numero_str = fot.numero_str
and fo.fecha_aprobacion between 20160101 and 20161231
and fot.fecha_deposito between 20160101 and 20161231
and fo.junk_obligacion = djo.id
and vo.codigo_contratacion = djo.codigo_contratacion
and vo.contrato_id = fc.id
and dp.id = fc.proveedor
and fo.clasificador_entidad = de.id
and fo.clasificador_objeto_gasto = dog.id
--and fo.numero_str = 93641

