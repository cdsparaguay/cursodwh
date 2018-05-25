
select fo.fecha_factura, fot.fecha_deposito, dp.id as proveedor_id,
	de.id as entidad_id, dog.objeto_gasto_codigo, 
	(dtdeposito.dayindimension::int-dtfactura.dayindimension::int) as diff,
	de.entidad_descripcion,dog.objeto_gasto_descripcion,dp.razon_social

from fact_obligacion fo, fact_ot fot, dim_junk_obligacion djo,
	v_contrato vo, fact_contrato fc, dim_proveedor dp,
	dim_clasificador_entidad de, dim_clasificador_objeto_gasto dog,
	dim_tiempo dtfactura, dim_tiempo dtdeposito,
	dim_tiempo dtob, dim_tiempo dtot

where fo.numero_str = fot.numero_str
	and fo.fecha_aprobacion = dtob.id
	and fot.fecha_generacion = dtot.id
	and dtob.year = dtot.year 
	and dtob.month = dtot.month
	and fo.junk_obligacion = djo.id
	and vo.codigo_contratacion = djo.codigo_contratacion
	and vo.contrato_id = fc.id
	and dp.id = fc.proveedor
	and fo.clasificador_entidad = de.id
	and fo.clasificador_objeto_gasto = dog.id
	and dtfactura.id = fo.fecha_factura
	and dtdeposito.id = fot.fecha_deposito
	and dtfactura.id > 0
	and dtdeposito.id > 0
order by diff
